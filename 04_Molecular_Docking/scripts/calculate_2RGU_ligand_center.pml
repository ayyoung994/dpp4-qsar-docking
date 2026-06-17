```pymol
# calculate_2RGU_ligand_center.pml
# Purpose:
# Calculate the center-of-mass coordinates of the co-crystallized ligand 356
# in the human DPP-4 crystal structure 2RGU.
#
# Usage in PyMOL:
# @calculate_2RGU_ligand_center.pml

reinitialize

# Load the original 2RGU structure
# Adjust the path if your receptor file is stored somewhere else
load ../receptor/2RGU_original.pdb, 2RGU

# Select the co-crystallized ligand 356 in chain A
select lig356_A, 2RGU and resn 356 and chain A

# Show ligand for visual checking
show sticks, lig356_A
zoom lig356_A

python
from pymol import cmd

selection_name = "lig356_A"

if cmd.count_atoms(selection_name) == 0:
    raise ValueError("No atoms found for lig356_A. Check ligand residue name and chain ID.")

center = cmd.centerofmass(selection_name)

print("")
print("Docking grid center calculated from co-crystallized ligand 356")
print("-------------------------------------------------------------")
print("center_x =", round(center[0], 3))
print("center_y =", round(center[1], 3))
print("center_z =", round(center[2], 3))
print("")

with open("DPP4_2RGU_ligand_center_output.txt", "w") as f:
    f.write("Docking grid center calculated from co-crystallized ligand 356 in 2RGU\n")
    f.write("center_x = " + str(round(center[0], 3)) + "\n")
    f.write("center_y = " + str(round(center[1], 3)) + "\n")
    f.write("center_z = " + str(round(center[2], 3)) + "\n")

python end
```
