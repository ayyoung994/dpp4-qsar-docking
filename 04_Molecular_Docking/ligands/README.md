# Ligand Files

This folder contains the ligand files used for molecular docking of selected DPP-4 inhibitor candidates.

## Purpose

The ligands in this folder were prepared from the final docking candidate set selected from the curated DPP-4 QSAR dataset. The selected compounds were exported as three-dimensional SDF structures using RDKit, and the merged SDF file was split into individual ligand SDF files for docking preparation in PyRx.

The ligand files were used for downstream molecular docking with AutoDock Vina through PyRx.

## File list

```text
ligand_split_summary.csv
individual_ligands/
reference_ligand/
```

## File descriptions

### `ligand_split_summary.csv`

This file summarizes the individual ligand SDF files generated from the merged SDF file.

It records ligand IDs, file names, ChEMBL compound IDs, activity information, selection groups, and SMILES.

### `individual_ligands/`

This folder contains the individual SDF files for the final docking candidates.

Each ligand is stored separately using the candidate ID naming format, such as:

```text
C1.sdf
C2.sdf
C3.sdf
...
```

These files can be imported into PyRx and converted to AutoDock-compatible PDBQT format during ligand preparation.

### `reference_ligand/`

This folder contains the co-crystallized reference ligand extracted from the DPP-4 crystal structure 2RGU.

The reference ligand was used for binding-site inspection and docking-grid definition.

## Docking preparation note

The individual ligand SDF files were used as ligand inputs for PyRx. They were not manually converted to PDB before docking because SDF is more suitable for preserving small-molecule structural information such as bond connectivity.

In PyRx, the SDF ligands can be imported and converted to PDBQT format using the Open Babel/AutoDock ligand preparation workflow. The final ligand format used by AutoDock Vina is PDBQT.

## Notes

The docking candidate ligands and the reference ligand have different purposes. The `individual_ligands/` folder contains the final selected compounds used for docking, while the `reference_ligand/` folder contains the co-crystallized ligand used to define and inspect the binding site.

