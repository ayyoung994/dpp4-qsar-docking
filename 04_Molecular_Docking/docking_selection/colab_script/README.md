# Colab Script

This directory contains the Google Colab notebook used to select and prepare representative DPP-4 ligands for molecular docking.

## Notebook

```text
DPP4_Docking_Selection.ipynb
```

This notebook was used to select compounds from the curated DPP-4 QSAR dataset and prepare them as 3D ligand structures for docking.

## Purpose

The purpose of this notebook was to generate a small, representative ligand set for molecular docking analysis. The selected ligands included known DPP-4 inhibitors and representative compounds from different activity groups.

## Input Dataset

The notebook uses the curated QSAR dataset:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

Main columns used in the notebook include:

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
3. Identify known DPP-4 inhibitors where available
4. Convert parent SMILES into RDKit molecule objects
5. Calculate simple molecular descriptors
6. Apply relaxed drug-like filtering
7. Generate Morgan fingerprints with chirality
8. Select representative compounds for docking
9. Avoid highly redundant compounds using Tanimoto similarity filtering
10. Save the selected docking candidate table
11. Generate 3D conformers using RDKit ETKDG
12. Export selected ligands as a merged SDF file
13. Split the merged SDF file into individual ligand SDF files
```

## Selection Strategy

The selected docking compounds were chosen to include:

```text
Known DPP-4 inhibitors
High-activity compounds
Moderate-activity compounds
Low-activity compounds
```

To reduce structural redundancy, Morgan fingerprint Tanimoto similarity was used during representative compound selection.

## Ligand Preparation

Selected ligands were converted into 3D structures using RDKit. Explicit hydrogens were added before conformer generation, and 3D conformers were generated using ETKDG.

The prepared ligands were saved in SDF format for molecular docking.

## Main Outputs

The notebook generates:

```text
DPP4_druglike_candidate_pool.csv
DPP4_selected_docking_candidates.csv
DPP4_selected_docking_candidates.sdf
ligand_split_summary.csv
Individual ligand SDF files
```

Detailed output descriptions are provided in:

```text
../output_files/README.md
```

## Required Packages

The main Python packages used in this notebook are:

```text
pandas
numpy
rdkit
scikit-learn
```

## Notes

This notebook was used only for docking-candidate selection and ligand preparation. Molecular docking was performed separately using the selected ligand SDF files and the prepared DPP-4 receptor structure.
