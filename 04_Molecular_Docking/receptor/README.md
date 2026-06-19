# Receptor Files

This folder contains the receptor structure files used for the DPP-4 molecular docking workflow.

## Purpose

The purpose of this folder is to document the preparation of the human DPP-4 receptor structure used for docking analysis.

The receptor was prepared from the human DPP-4 crystal structure 2RGU. The co-crystallized ligand 356 / BI 1356 was used to identify the inhibitor-binding pocket and guide the docking grid placement.

## Protein Structure

```text
Protein: Human dipeptidyl peptidase-4
PDB ID: 2RGU
Reference ligand: 356 / BI 1356
Experimental method: X-ray crystallography
Resolution: 2.60 Å
```

## File List

```text
2RGU.pdb
2rgu_full_chain.pdb
2RGU_chainA_with_ligand.pdb
2RGU_chainA_receptor_clean.pdb
```

## File Descriptions

### 1. `2RGU.pdb`

This is the original PDB structure file downloaded from the RCSB Protein Data Bank.

It contains the structural information available in the original 2RGU entry, including protein chains, the co-crystallized ligand, crystallographic waters, and other heteroatoms.

### 2. `2rgu_full_chain.pdb`

This file contains the extracted DPP-4 protein chain used during receptor inspection and preparation.

It was generated from the original 2RGU structure to simplify the receptor preparation workflow.

### 3. `2RGU_chainA_with_ligand.pdb`

This file contains DPP-4 chain A together with the co-crystallized ligand 356 / BI 1356.

This file was used to inspect the inhibitor-binding pocket and guide the docking search-space placement.

### 4. `2RGU_chainA_receptor_clean.pdb`

This file contains the cleaned DPP-4 receptor structure prepared for docking.

The co-crystallized ligand, crystallographic water molecules, and non-essential heteroatoms were removed. This cleaned receptor was used as the main receptor input for docking preparation.

## Docking Search Space

The final Vina docking search space was defined around the DPP-4 inhibitor-binding pocket using PyRx.

```text
Vina search space center:
X = 50.7470
Y = 48.6659
Z = 30.5131

Search space dimensions:
X = 29.6791 Å
Y = 29.5164 Å
Z = 29.7007 Å
```

## Notes

The file `2RGU_chainA_with_ligand.pdb` was used for binding-site inspection.

The file `2RGU_chainA_receptor_clean.pdb` was used as the cleaned receptor structure for docking preparation.

The docking grid was positioned to cover the DPP-4 inhibitor-binding pocket around the reference ligand. The grid coordinates and dimensions reported here correspond to the final PyRx/Vina search-space setting used for docking.


