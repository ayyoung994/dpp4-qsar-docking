# Docked Ligands

This folder contains the docked ligand pose files generated from the molecular docking analysis using the DPP-4 receptor structure 2RGU.

## File Format

The docked ligand outputs are provided in `.sdf` format.

```text
.sdf
```

SDF files store molecular structure information and can be opened or visualized using molecular visualization software such as PyMOL, Discovery Studio Visualizer, ChimeraX, or other cheminformatics tools.

## Contents

This directory contains docked poses for the selected DPP-4 ligands, including selected compounds C1–C9 and the reference ligand where applicable.

Example file types may include:

```text
2RGU_C1.sdf
2RGU_C2.sdf
2RGU_C3.sdf
...
2RGU_C9.sdf
2RGU_reference_ligand.sdf
```

## Purpose

These files represent the predicted binding poses of selected ligands in the DPP-4 binding pocket. They were used for visual inspection, 2D interaction analysis, and structural interpretation of the docking results.

## Use in the Project

The docked ligand poses were used to:

```text
1. Inspect ligand orientation in the DPP-4 binding pocket
2. Compare selected compounds with the reference ligand
3. Generate 2D protein–ligand interaction diagrams
4. Support qualitative interpretation of QSAR and docking results
```

## Notes

These docked structures are computational predictions and should be interpreted as supportive structural evidence. Docking poses and scores depend on receptor preparation, ligand preparation, grid definition, and scoring-function limitations.
