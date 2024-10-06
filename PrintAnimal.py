import sys
import numpy as np
import re


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


def main():
    animal = "Orbium unicaudatus"
    print_specific_animal(animal)


main()
