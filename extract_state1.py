with open("GFLG_out.pdbqt") as f:
    lines = f.readlines()

model1 = []
in_model1 = False
for line in lines:
    if line.startswith("MODEL        1"):
        in_model1 = True
    if in_model1:
        model1.append(line)
    if line.startswith("ENDMDL") and in_model1:
        break

with open("GFLG_best.pdbqt", "w") as f:
    f.writelines(model1)
print("done")
