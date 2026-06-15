# Colab Scripts

This folder contains the Google Colab notebook used for DPP-4 inhibitor data curation.

## Notebook

```text
01_dpp4_chembl_data_curation.ipynb
```

This notebook was used to collect, filter, clean, and prepare human DPP-4 inhibitor bioactivity data from ChEMBL for QSAR modeling.

## Purpose

The main purpose of this notebook is to generate a QSAR-ready dataset of human DPP-4 inhibitors using standardized IC50 activity records from ChEMBL.

The workflow includes:

* Retrieving human DPP-4 activity records from ChEMBL
* Selecting IC50 bioactivity data
* Removing exact duplicate activity rows
* Applying strict IC50 filtering criteria
* Retrieving compound structures and molecular properties
* Extracting canonical SMILES
* Removing salts and counterions
* Generating parent SMILES
* Handling duplicate compounds by parent SMILES
* Removing inconsistent duplicate measurements
* Converting IC50 values to pIC50
* Assigning activity classes
* Exporting curated datasets for downstream QSAR analysis

## Target information

```text
Target: Human dipeptidyl peptidase-4
ChEMBL target ID: CHEMBL284
Target organism: Homo sapiens
Activity type: IC50
Activity unit: nM
```

## Required Python packages

The notebook uses the following main packages:

```text
pandas
numpy
chembl_webresource_client
rdkit
```

In Google Colab, the required packages are installed using:

```python
!pip install -q chembl_webresource_client rdkit
```

## Main workflow

The notebook is organized into the following steps:

```text
Step 1  Install and import data from ChEMBL
Step 2  Import packages
Step 3  Check the DPP-4 target
Step 4  Check available DPP-4 activity records
Step 5  Extract IC50 activity data directly from ChEMBL
Step 6  Apply strict IC50 filtering
Step 7  Retrieve molecule structures and molecular properties
Step 8  Extract canonical SMILES and molecular properties
Step 9  Check assay types before duplicate handling
Step 10 Choose source dataset
Step 11 Remove salts/counterions and create parent SMILES
Step 12 Handle duplicate compounds by parent SMILES
Step 13 Remove inconsistent duplicates
Step 14 Add activity class
Step 15 Save curated output files
Step 16 Perform final dataset check-up
```

## Filtering criteria

Records were retained only when they satisfied the following criteria:

* Activity type was IC50
* Activity unit was nM
* Activity relation was `"="`
* Activity value was positive and non-missing
* Target organism was Homo sapiens
* Data validity comments were absent
* Potential duplicate records were excluded
* Standardized ChEMBL records were retained
* Molecular structures had valid SMILES
* Salts and counterions were removed using parent SMILES processing
* Duplicate compounds were aggregated or removed based on pIC50 consistency

## Duplicate handling

Duplicate compounds were handled using parent SMILES.

For compounds with multiple IC50 records, the median IC50 and median pIC50 values were calculated. Compounds with inconsistent duplicate measurements were removed using a pIC50 range cutoff:

```text
pIC50 range ≤ 0.2
```

This step was used to reduce noise and improve dataset reliability before QSAR modeling.

## Activity classification

The final curated compounds were assigned into three activity classes based on pIC50 values:

```text
Low:      pIC50 < 6
Moderate: 6 ≤ pIC50 < 7
High:     pIC50 ≥ 7
```

## Output files

The notebook generates the following output files:

```text
DPP4_ChEMBL_raw_IC50_deduplicated.csv
DPP4_ChEMBL_IC50_strict_filtered.csv
DPP4_ChEMBL_IC50_strict_records_parent_annotated.csv
DPP4_ChEMBL_IC50_parent_unique_before_duplicate_filter.csv
DPP4_removed_inconsistent_parent_duplicates.csv
DPP4_ChEMBL_IC50_parent_curated_unique.csv
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

## Final QSAR-ready dataset

The final locked dataset generated from this workflow is:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file is used as the input dataset for downstream chemical space analysis, QSAR modeling, and docking compound selection.

## Notes

The notebook should be run from top to bottom in Google Colab. Because the data are retrieved directly from ChEMBL, internet access is required when running the notebook.
