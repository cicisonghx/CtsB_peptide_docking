from Bio import PDB

parser = PDB.PDBParser(QUIET=True)
structure = parser.get_structure("ctsb", "ctsb_clean.pdb")

# CtsB active site residues: Cys29, His199
coords = []
for model in structure:
    for chain in model:
        for residue in chain:
            if residue.get_id()[1] in [29, 199]:
                for atom in residue:
                    coords.append(atom.get_vector().get_array())

import numpy as np
coords = np.array(coords)
center = coords.mean(axis=0)
print(f"Center x: {center[0]:.2f}")
print(f"Center y: {center[1]:.2f}")
print(f"Center z: {center[2]:.2f}")
