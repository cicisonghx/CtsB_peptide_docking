from rdkit import Chem
from rdkit.Chem import AllChem

peptides = {
    "GFLG": "NCC(=O)NC(Cc1ccccc1)C(=O)NC(CC(C)C)C(=O)NCC(=O)O",
    "EGFLGE": "NC(CCC(=O)O)C(=O)NCC(=O)NC(Cc1ccccc1)C(=O)NC(CC(C)C)C(=O)NCC(=O)NC(CCC(=O)O)C(=O)O",
    "GFLGD": "NCC(=O)NC(Cc1ccccc1)C(=O)NC(CC(C)C)C(=O)NCC(=O)NC(CC(=O)O)C(=O)O"
}

for name,smiles in peptides.items():
    mol = Chem.MolFromSmiles(smiles)
    mol = Chem.AddHs(mol)
    AllChem.EmbedMolecule(mol, randomSeed = 42)
    AllChem.MMFFOptimizeMolecule(mol)
    Chem.MolToMolFile(mol, f'{name}.mol')
    print(f'{name} done')


