# Input Files

This directory contains the input dataset used for the DPP-4 Y-randomization analysis.

## Main Input File

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file contains the curated DPP-4 inhibitor dataset used previously for QSAR regression modeling. The same dataset was used here to reproduce the molecular fingerprint matrix, training set, and cross-validation setting for Y-randomization.

## Key Columns

The main columns used in the Y-randomization notebook are:

```text
parent_smiles
pIC50_median
```

## Column Descriptions

```text
parent_smiles
```

Curated parent SMILES used to generate RDKit molecule objects and Morgan fingerprints.

```text
pIC50_median
```

Median pIC50 value used as the original regression target before randomization.

## Use in the Notebook

The input dataset was used for:

```text
1. Loading curated DPP-4 inhibitor structures and activity values
2. Converting parent SMILES into RDKit molecule objects
3. Generating Morgan fingerprints
4. Reproducing the same train/test split used in the QSAR regression workflow
5. Calculating real cross-validation performance
6. Performing Y-randomization by shuffling the training-set activity values
```

## Notes

The dataset was already curated before this validation step. The Y-randomization notebook checks missing parent SMILES, missing pIC50 values, and invalid RDKit molecule conversions before running the validation procedure.

