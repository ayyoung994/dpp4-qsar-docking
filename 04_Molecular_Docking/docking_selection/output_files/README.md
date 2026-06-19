# Output Files

This directory contains the main output files generated from the DPP-4 docking-candidate selection workflow.

## Drug-Like Candidate Pool

```text
DPP4_druglike_candidate_pool.csv
```

This file contains the filtered candidate pool after applying relaxed drug-like molecular descriptor criteria.

The file was used as an intermediate selection pool before choosing the final representative docking candidates.

## Selected Docking Candidates

```text
DPP4_selected_docking_candidates.csv
```

This file contains the final selected compounds for molecular docking.

Main information may include:

```text
Candidate ID
Selection group
Molecule ChEMBL ID
Preferred name
Parent SMILES
pIC50_median
Activity class
Molecular descriptors
```

The selected compounds include representative known, high-, moderate-, and low-activity DPP-4 compounds.

## Merged SDF File

```text
DPP4_selected_docking_candidates.sdf
```

This file contains the selected docking candidates as 3D ligand structures in a single merged SDF file.

The ligands were prepared using RDKit, with explicit hydrogens added and 3D conformers generated before export.

## Files Moved to the Ligands Directory

The individual split ligand SDF files and the ligand split summary were stored separately in:

```text
04_Molecular_Docking/ligands/
```

That directory contains files such as:

```text
C1.sdf
C2.sdf
C3.sdf
C4.sdf
C5.sdf
C6.sdf
C7.sdf
C8.sdf
C9.sdf
ligand_split_summary.csv
```

These individual SDF files were used as ligand inputs for molecular docking.

## Notes

These output files were generated for molecular docking preparation. They do not contain docking scores or final docked poses.

Docking scores, docked ligand poses, and protein–ligand interaction diagrams are stored in the separate molecular docking output directory.
