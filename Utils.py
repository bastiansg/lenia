import re
from matplotlib.colors import LinearSegmentedColormap
import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl

ORBIUM = "7.MD6.qL$6.pKqEqFURpApBRAqQ$5.VqTrSsBrOpXpWpTpWpUpCrQ$4.CQrQsTsWsApITNPpGqGvL$3.IpIpWrOsGsBqXpJ4.LsFrL$A.DpKpSpJpDqOqUqSqE5.ExD$qL.pBpTT2.qCrGrVrWqM5.sTpP$.pGpWpD3.qUsMtItQtJ6.tL$.uFqGH3.pXtOuR2vFsK5.sM$.tUqL4.GuNwAwVxBwNpC4.qXpA$2.uH5.vBxGyEyMyHtW4.qIpL$2.wV5.tIyG3yOxQqW2.FqHpJ$2.tUS4.rM2yOyJyOyHtVpPMpFqNV$2.HsR4.pUxAyOxLxDxEuVrMqBqGqKJ$3.sLpE3.pEuNxHwRwGvUuLsHrCqTpR$3.TrMS2.pFsLvDvPvEuPtNsGrGqIP$4.pRqRpNpFpTrNtGtVtStGsMrNqNpF$5.pMqKqLqRrIsCsLsIrTrFqJpHE$6.RpSqJqPqVqWqRqKpRXE$8.OpBpIpJpFTK!"
OTHER = "11.BGOVpA2pFpDpATOGB$9.JpApSqMrArLrS2rVrSrNrGqTqHpSpFQG$7.LpKqOrSsUtQuIuSuXvBuXuUuNuCtOtBsKrQqWqEpIQE$5.BpDqRsKuAvJwLxExRyByDyBxUxPxEwVwIvTvEuKtOsRrSqTpUpAJ$4.EpSrVuCwDxR12yOyDxPwVwDvGuKtJsHrGqCpDG$3.BpXsRvJxW17yOyIxPwSvTuStQsKrGpXVE$3.pPsWwF22yOyBxCwAuUtOsHqWpNO$2.QsHwI25yOyBxCvWuPtGrSqHpAE$2.qTvJ7yOyIyB3xW4yB2yDyIyL8yOxWwSvMuAsKqWpKG$.JtJyG6yOxJwIvTvRvWwDwI4wLwQwVxHxRyDyL7yOxMwFuPtBrIpSL$.qJvRyL5yOwSuKtGsWtBtJtTuC2uF2uCuIuSvJwAwVxMyByL6yOyDwSvGtLrSpXO$.sHxMxWyL3yOyBtGqWqCpXqHqTrLrVrXrS2rNrVsHtBtVuXvWwVxPyDyL6yOxEvOtVrXqCO$BtVwLxEyD3yOuUpN4.OpN2qCpSpIpFpIpXqRrSsUuAvBwDwXxRyG6yOxMvWuCsCqCO$pKuIvBwFxP3yOrV6.pApSpNT4.QpSrAsFtGuIvJwFxCxUyI5yOxRwAuCrXpXJ$qMsPtOvBwXyI2yOqEE3.BpDrDrSrGpUQE3.OpPqRrQsPtLuKvMwLxMyG5yOxUwAtVrQpNE$pUqRsCuAwDxWyOwIrQqC2pFpSqTtJuSuNtLrXrGqHpNpATpKpXqJqRrDrQsMtOuPvWxEyD5yOxRvTtOrDpD$.TqOsUvExCyGtVtDsMsFsKtGuPwAvTuStQtDtBsPsFrSrX2sHrVrAqJqEqOrLsRuCvOxCyD5yOxMvJsWqJL$2.pDrQuAvWvBtGtJtLtQuAuIvGuUtOsKrSsFsRtBtDtLuFuUuXuIsRqRpIVpNqRsFtVvRxHyI5yOxCuPrXpNB$3.qHsMuKrArSsHsP2sWtDsWrQqEpFpKqEqWrNrXsWuCvB2vRuPsFpN2.TqJsFuFwDxPyL5yOwItOqTQ$3.TqWpSVpPqEqMqOqHqMpK5.OpFpXrDsKtLuNvGvEtOqRL2.TqOsRuUwSyB5yOxWvEsFpNB$4.V17.pAqErIsPtQuIuAsFqCL2.pIrLtOvRxHyI5yOwQtOqOJ$24.pDqJrQsR2tDrXqEO.QqJsKuKwFxRyL4yOyDuXrQV$25.BpKqRrSsWtBsFqOpDpApUrItDuXwQyB5yOwDsPpN$27.OqErSsUtDsMrNqHpPqHrQtJvGxCyI4yOxHtOqEE$28.JqCrLsRtQtTrXpSpApXrNtOvTxR4yOyGuKqRG$29.BpPrLtVvGtLpU.EpSrVuIwVyL4yOuXrDL$31.qHtOvWuNpP3.qEtBwDyI4yOvJrIL$31.pItBvWuSqC3.TrXvRyL4yOvOrIL$31.LsMvGuIrDE3.rLwF5yOvJrDG$32.rS2uFsFpF3.sKyD5yOuUqMB$32.qRsMuAtDqWpAEpSwD6yOtVpP$32.pFrNtGtOsPrGqJvG6yOxHsKQ$33.qEsFtGtLtGvJ7yOvGqO$33.QqRsFtDtV3yOyI2yGyIxPsRL$34.pAqRrXwAxRxPxJxCwXxExRuKpS$35.VqWvOvTvRvJvEvJwAvJqT$36.rXtGtJtDsUtBtQuPrI$36.qHqRqO2qJrAsCrG$40.BpDqJ!"


def ParseBetaFloats():
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


def print_specific_animal(animal: str) -> None:
    with open("animals.csv", "r") as f:
        for line in f.readlines():
            if f",{animal}," not in line:
                continue
            tokens: list[str] = line.split(",")
            animal: str = tokens[4]
            rle: str = tokens[-1]
            arr: np.ndarray = rle2arr(rle)
            shape: tuple[int, int] = str(arr.shape)[1:-1]
            array_str = "\n".join(" ".join(f"{float(x):.3f}" for x in row) for row in arr)
            with open("animal.txt", "w") as f:
                f.write(f"{animal}\n{shape}\n{array_str}")


def CalculateCenterOfMass(cells: np.ndarray) -> tuple[int, int]:
    result = np.array((0, 0), dtype=np.float64)
    for coord, value in np.ndenumerate(cells):
        result += np.array(coord) * value
    return result / cells.sum()


def DisplayCells(cells: np.ndarray) -> None:
    colors = ["black", "purple", "blue", "green", "yellow", "orange", "red"]
    custom_cmap = LinearSegmentedColormap.from_list("custom_cmap", colors, N=256)
    fig, ax = plt.subplots(layout="constrained")
    fig.colorbar(mpl.cm.ScalarMappable(norm=mpl.colors.Normalize(0, 1), cmap=custom_cmap), ax=ax, orientation="vertical")
    ax.imshow(cells, cmap=custom_cmap)
    plt.show()


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


def main():
    PrintAllT()


if __name__ == "__main__":
    main()
