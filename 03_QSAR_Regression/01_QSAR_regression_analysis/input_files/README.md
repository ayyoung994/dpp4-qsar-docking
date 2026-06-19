# Input Files

This directory contains the input dataset used for the DPP-4 QSAR regression analysis.

## Main Input File

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file contains the curated DPP-4 inhibitor dataset used for model development. The dataset includes parent molecular structures, compound identifiers, median IC50-derived pIC50 values, and activity class labels.

## Key Columns

The main columns used in the QSAR regression notebook are:

```text
molecule_chembl_id
parent_smiles
pIC50_median
activity_class
```

## Description

The `parent_smiles` column was used to generate RDKit molecule objects and Morgan fingerprints. The `pIC50_median` column was used as the continuous regression target. The `activity_class` column was used only for dataset inspection and activity distribution checking, not as the regression target.

## Notes

This dataset was already curated before the QSAR regression step. Missing values, duplicated parent SMILES, and invalid RDKit molecule conversions were checked in the Colab notebook before model development.

