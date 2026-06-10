from Bio import PDB

parser = PDB.PDBParser(QUIET=True)
structure = parser.get_structure("ctsb", "ctsb.pdb")

io = PDB.PDBIO()
io.set_structure(structure)

class ProteinSelect(PDB.Select):
    def accept_residue(self, residue):
        return residue.get_resname() != "HOH"

io.save("ctsb_clean.pdb", ProteinSelect())
print("ctsb_clean.pdb saved")
