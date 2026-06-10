coords = []
with open("ctsb2.pdb") as f:
    for line in f:
        if line.startswith("ATOM"):
            chain = line[21]
            resnum = int(line[22:26].strip())
            atomname = line[12:16].strip()
            resname = line[17:20].strip()
            if chain == "A" and resnum in [26, 199] and atomname == "CA":
                x = float(line[30:38])
                y = float(line[38:46])
                z = float(line[46:54])
                coords.append((x, y, z))
                print(f"Residue {resnum} {resname}: x={x:.2f} y={y:.2f} z={z:.2f}")

cx = sum(c[0] for c in coords) / len(coords)
cy = sum(c[1] for c in coords) / len(coords)
cz = sum(c[2] for c in coords) / len(coords)
print(f"\nCenter: x={cx:.2f} y={cy:.2f} z={cz:.2f}")
