# Receptor Files

This folder contains the receptor structure files used for the DPP-4 molecular docking workflow.

## Purpose

The purpose of this folder is to document the preparation of the human DPP-4 receptor structure used for docking analysis.

The receptor was prepared from the human DPP-4 crystal structure 2RGU. The co-crystallized ligand 356 / BI 1356 was used to identify the inhibitor-binding pocket and define the docking grid center.

## Protein structure

```text
Protein: Human dipeptidyl peptidase-4
PDB ID: 2RGU
Reference ligand: 356 / BI 1356
Experimental method: X-ray crystallography
Resolution: 2.60 Å
```

## File list

```text
2RGU.pdb
2rgu_full_chain.pdb
2RGU_chainA_with_ligand.pdb
2RGU_chainA_receptor_clean.pdb
```

## File descriptions

### 1. `2RGU.pdb`

This is the original PDB structure file downloaded from the RCSB Protein Data Bank.

It contains the full structural information available in the original 2RGU entry, including protein chains, the co-crystallized ligand, crystallographic waters, and other heteroatoms.

### 2. `2rgu_full_chain.pdb`

This file contains the extracted DPP-4 protein chain used during receptor inspection and preparation.

It was generated from the original 2RGU structure to simplify the receptor preparation workflow.

### 3. `2RGU_chainA_with_ligand.pdb`

This file contains DPP-4 chain A together with the co-crystallized ligand 356.

This file was used to inspect the ligand-binding region and calculate the docking grid center based on the position of the reference ligand.

### 4. `2RGU_chainA_receptor_clean.pdb`

This file contains the cleaned DPP-4 receptor structure prepared for docking.

The co-crystallized ligand, crystallographic water molecules, and non-essential heteroatoms were removed. This receptor file was used as the main receptor input for docking preparation.


## Docking grid center

```text
center_x = 50.739
center_y = 48.590
center_z = 35.361
```

## Docking grid size

```text
size_x = 28 Å
size_y = 28 Å
size_z = 28 Å
```

## Notes

The file `2RGU_chainA_with_ligand.pdb` was used for binding-site inspection and grid-center calculation.

The file `2RGU_chainA_receptor_clean.pdb` was used as the cleaned receptor structure for docking preparation.

The docking grid was centered on the co-crystallized ligand 356 / BI 1356 to ensure that the docking search space covered the known DPP-4 inhibitor-binding pocket.

