# Input Files

This directory contains the input dataset used for the DPP-4 QSAR regression analysis.

## Main Input File

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file contains the curated DPP-4 inhibitor dataset used for QSAR regression modeling.

## Key Columns

The main columns used in the regression notebook are:

```text
molecule_chembl_id
parent_smiles
pIC50_median
activity_class
```

## Column Descriptions

```text
molecule_chembl_id
```

Compound identifier.

```text
parent_smiles
```

Curated parent SMILES used to generate RDKit molecule objects and Morgan fingerprints.

```text
pIC50_median
```

Median pIC50 value used as the continuous regression target.

```text
activity_class
```

Activity class label used for dataset inspection and activity distribution checking.

## Use in the Notebook

The input dataset was used for:

```text
1. Loading curated DPP-4 inhibitor structures and activity values
2. Checking missing values and duplicated parent SMILES
3. Converting parent SMILES into RDKit molecule objects
4. Generating Morgan fingerprints
5. Building and evaluating QSAR regression models
```

## Notes

This dataset was already curated before the QSAR regression step. The regression notebook checks the dataset again for missing SMILES, missing pIC50 values, missing activity labels, duplicated parent SMILES, and invalid RDKit molecule conversions before model development.

