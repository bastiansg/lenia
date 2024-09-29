with open("animals.csv", "r") as f:
    for line in f.readlines():
        tokens = line.strip().split(",")
        beta = [str(round(eval(x), 5)) for x in tokens[7].split(";")]
        tokens[7] = ";".join(beta)
        tokens = ",".join(tokens)
        with open("animals_beta.csv", "a") as f2:
            f2.write(tokens + "\n")
