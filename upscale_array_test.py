import numpy as np
import re

ORBIUM = "7.MD6.qL$6.pKqEqFURpApBRAqQ$5.VqTrSsBrOpXpWpTpWpUpCrQ$4.CQrQsTsWsApITNPpGqGvL$3.IpIpWrOsGsBqXpJ4.LsFrL$A.DpKpSpJpDqOqUqSqE5.ExD$qL.pBpTT2.qCrGrVrWqM5.sTpP$.pGpWpD3.qUsMtItQtJ6.tL$.uFqGH3.pXtOuR2vFsK5.sM$.tUqL4.GuNwAwVxBwNpC4.qXpA$2.uH5.vBxGyEyMyHtW4.qIpL$2.wV5.tIyG3yOxQqW2.FqHpJ$2.tUS4.rM2yOyJyOyHtVpPMpFqNV$2.HsR4.pUxAyOxLxDxEuVrMqBqGqKJ$3.sLpE3.pEuNxHwRwGvUuLsHrCqTpR$3.TrMS2.pFsLvDvPvEuPtNsGrGqIP$4.pRqRpNpFpTrNtGtVtStGsMrNqNpF$5.pMqKqLqRrIsCsLsIrTrFqJpHE$6.RpSqJqPqVqWqRqKpRXE$8.OpBpIpJpFTK!"


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


print(upscale_array_manually(rle2arr(ORBIUM), 2).shape)
