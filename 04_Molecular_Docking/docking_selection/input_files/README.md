# Input Files

This directory contains the input file used for selecting DPP-4 ligands for molecular docking.

## Main Input File

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file contains the curated DPP-4 QSAR dataset used previously for QSAR regression modeling. The same curated dataset was used here to select representative compounds for molecular docking.

## Key Columns

The main columns used in the docking selection notebook are:

```text
molecule_chembl_id
pref_name
parent_smiles
pIC50_median
activity_class
```

## Column Descriptions

### `molecule_chembl_id`

Compound identifier from ChEMBL.

### `pref_name`

Preferred compound name, when available. This column was useful for identifying known DPP-4 inhibitors.

### `parent_smiles`

Curated parent SMILES used to generate RDKit molecule objects, calculate descriptors, generate fingerprints, and prepare 3D ligand structures.

### `pIC50_median`

Median pIC50 value used to rank and select compounds by inhibitory potency.

### `activity_class`

Activity class label used to select representative compounds from high-, moderate-, and low-activity groups.

## Use in the Notebook

The input dataset was used for:

```text
1. Loading curated DPP-4 inhibitor structures and activity values
2. Identifying known DPP-4 inhibitors
3. Calculating molecular descriptors
4. Applying relaxed drug-like filtering
5. Generating Morgan fingerprints
6. Selecting structurally diverse docking candidates
7. Preparing selected ligands as 3D SDF files
```

## Notes

This dataset was already curated before the docking selection step. The docking selection notebook uses this file as the starting point for representative ligand selection and ligand preparation.
