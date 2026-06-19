# Docking Selection

This directory contains the notebook, input files, and output files used to select representative DPP-4 ligands for molecular docking.

## Purpose

The purpose of this workflow was to select a small set of representative ligands from the curated DPP-4 QSAR dataset for molecular docking analysis. The selected compounds included known DPP-4 inhibitors and representative high-, moderate-, and low-activity compounds.

The selected ligands were prepared as 3D structures and exported as SDF files for docking.

## Directory Structure

```text
docking_selection/
│
├── colab_script/
│   └── DPP4_Docking_Selection.ipynb
│
├── input_files/
│   └── DPP4_QSAR_dataset_parent_cleaned_locked.csv
│
├── output_files/
│   ├── DPP4_druglike_candidate_pool.csv
│   ├── DPP4_selected_docking_candidates.csv
│   ├── DPP4_selected_docking_candidates.sdf
│   ├── ligand_split_summary.csv
│   └── ligands_split/
│       ├── C1.sdf
│       ├── C2.sdf
│       ├── C3.sdf
│       └── ...
│
└── README.md
```

## Input

The main input file is:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file contains the curated DPP-4 QSAR dataset, including parent SMILES, compound identifiers, pIC50 values, and activity classes.

Main columns used in this workflow:

```text
molecule_chembl_id
pref_name
parent_smiles
pIC50_median
activity_class
```

## Workflow Summary

The notebook performs the following steps:

```text
1. Load the curated DPP-4 QSAR dataset
2. Check required columns and activity-class information
3. Search for known DPP-4 inhibitors in the dataset
4. Convert parent SMILES into RDKit molecule objects
5. Calculate simple molecular descriptors
6. Apply relaxed drug-like filtering
7. Generate Morgan fingerprints for diversity selection
8. Select representative known, high-, moderate-, and low-activity compounds
9. Save the selected docking candidate table
10. Generate 3D ligand structures using ETKDG
11. Export selected ligands as a merged SDF file
12. Split the merged SDF file into individual ligand SDF files
```

## Selection Strategy

The ligand selection strategy included:

```text
Known DPP-4 inhibitors
High-activity compounds
Moderate-activity compounds
Low-activity compounds
```

To avoid selecting highly redundant compounds, Morgan fingerprint Tanimoto similarity was used for diversity filtering. The similarity cutoff was:

```text
Tanimoto similarity cutoff = 0.85
```

## Molecular Representation and Ligand Preparation

Morgan fingerprints were generated using RDKit with chirality included.

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Include chirality: True
```

For ligand preparation, 3D conformers were generated using RDKit ETKDGv3. Explicit hydrogens were added before conformer generation, and the selected ligands were saved in SDF format.

## Output Files

The workflow generates the following main output files:

```text
DPP4_druglike_candidate_pool.csv
```

Contains the filtered drug-like candidate pool after applying relaxed molecular descriptor filters.

```text
DPP4_selected_docking_candidates.csv
```

Contains the final selected compounds for docking, including candidate IDs, selection groups, compound identifiers, parent SMILES, activity values, activity classes, and molecular descriptors.

```text
DPP4_selected_docking_candidates.sdf
```

Merged SDF file containing all selected docking candidates with generated 3D conformers.

```text
ligand_split_summary.csv
```

Summary table for the individual ligand SDF files generated after splitting the merged SDF file.

```text
ligands_split/
```

Folder containing individual SDF files for each selected docking ligand, such as `C1.sdf`, `C2.sdf`, and subsequent candidate files.

## Notes

This workflow was used only to select and prepare representative ligands for docking. Docking itself was performed separately using the prepared ligand SDF files and the cleaned DPP-4 receptor structure.

The selected compounds were intended to support qualitative docking interpretation and structure–activity discussion, not to replace QSAR model validation.
