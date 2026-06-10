#!/bin/bash
# CtsB peptide docking pipeline
# Peptides: GFLG, EGFLGE, GFLGD
# Receptor: PDB 3CBJ chain A

# Step 1: Generate peptide 3D structures
python3 peptides.py

# Step 2: Clean receptor
python3 prep_receptor.py

# Step 3: Extract chain A
python3 extract_chainA2.py

# Step 4: Convert receptor to PDBQT
obabel ctsb2_chainA.pdb -O ctsb2_chainA.pdbqt -xr

# Step 5: Convert peptides to PDBQT
obabel GFLG.mol -O GFLG.pdbqt -h
obabel EGFLGE.mol -O EGFLGE.pdbqt -h
obabel GFLGD.mol -O GFLGD.pdbqt -h

# Step 6: Run docking (active site center: -13.30, -18.23, 19.93)
./vina_1.2.7_mac_aarch64 --receptor ctsb2_chainA.pdbqt --ligand GFLG.pdbqt --center_x -13.30 --center_y -18.23 --center_z 19.93 --size_x 20 --size_y 20 --size_z 20 --out GFLG_v2_out.pdbqt --exhaustiveness 8

./vina_1.2.7_mac_aarch64 --receptor ctsb2_chainA.pdbqt --ligand EGFLGE.pdbqt --center_x -13.30 --center_y -18.23 --center_z 19.93 --size_x 20 --size_y 20 --size_z 20 --out EGFLGE_v2_out.pdbqt --exhaustiveness 8

./vina_1.2.7_mac_aarch64 --receptor ctsb2_chainA.pdbqt --ligand GFLGD.pdbqt --center_x -13.30 --center_y -18.23 --center_z 19.93 --size_x 20 --size_y 20 --size_z 20 --out GFLGD_v2_out.pdbqt --exhaustiveness 8

# Step 7: Extract best poses
awk '/^MODEL 1/{found=1} found{print} /^ENDMDL/{if(found) exit}' GFLG_v2_out.pdbqt > GFLG_v2_best.pdbqt
awk '/^MODEL 1/{found=1} found{print} /^ENDMDL/{if(found) exit}' EGFLGE_v2_out.pdbqt > EGFLGE_v2_best.pdbqt
awk '/^MODEL 1/{found=1} found{print} /^ENDMDL/{if(found) exit}' GFLGD_v2_out.pdbqt > GFLGD_v2_best.pdbqt

# Step 8: Convert to PDB
obabel GFLG_v2_best.pdbqt -O GFLG_v2_best.pdb
obabel EGFLGE_v2_best.pdbqt -O EGFLGE_v2_best.pdb
obabel GFLGD_v2_best.pdbqt -O GFLGD_v2_best.pdb

echo "All done!"
