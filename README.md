# CtsB Peptide Docking Pipeline

Molecular docking pipeline for investigating Cathepsin B (CtsB) cleavage selectivity of peptide substrates GFLG, EGFLGE, and GFLGD.

## Dependencies

- Python 3.13
- RDKit
- BioPython
- Open Babel 3.1.0
- AutoDock Vina 1.2.7
- PyMOL 3.1

## Receptor

Crystal structure of human Cathepsin B: PDB ID [3CBJ](https://www.rcsb.org/structure/3CBJ), chain A extracted for docking.

## Pipeline

### 1. Generate peptide 3D structures
python3 peptides.py
### 2. Prepare receptor
python3 prep_receptor.py
python3 extract_chainA.py
obabel ctsb2_chainA.pdb -O ctsb2_chainA.pdbqt -xr
### 3. Calculate active site center
python3 get_center.py
Active site center: x = −13.30, y = −18.23, z = 19.93 Å (Cys26, His199)

### 4. Run docking
bash run_docking.sh
## Results

| Peptide | Binding affinity (kcal/mol) | CtsB cleavage |
|---------|----------------------------|---------------|
| GFLG    | −6.667                     | ✅ Yes        |
| EGFLGE  | −6.959                     | ✅ Yes        |
| GFLGD   | −6.720                     | ❌ No         |

## Visualization

Open PyMOL and run:
@pymol_visualization.pml
## Reference

Eberhardt J, Santos-Martins D, Tillack AF, Forli S. AutoDock Vina 1.2.0: New Docking Methods, Expanded Force Field, and Python Bindings. J Chem Inf Model. 2021.
