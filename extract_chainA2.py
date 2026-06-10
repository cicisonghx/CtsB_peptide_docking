with open("ctsb2.pdb") as f:
    lines = f.readlines()

with open("ctsb2_chainA.pdb", "w") as f:
    for line in lines:
        if line.startswith("ATOM") and line[21] == "A":
            f.write(line)
        elif line.startswith("END"):
            f.write(line)
print("done")
