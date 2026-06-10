with open("ctsb_chainA.pdb") as f:
    lines = f.readlines()

for line in lines:
    if line.startswith("ATOM"):
        resnum = int(line[22:26].strip())
        resname = line[17:20].strip()
        atomname = line[12:16].strip()
        x = float(line[30:38])
        y = float(line[38:46])
        z = float(line[46:54])
        chain = line[21]
        if resnum in [29, 199] and atomname == "CA":
            print(f"Residue {resnum} {resname} chain {chain}: x={x:.2f} y={y:.2f} z={z:.2f}")
