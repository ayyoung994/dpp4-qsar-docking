# Output Files

This folder contains the output files generated from the DPP-4 data curation notebook.

## Purpose

The files in this folder document each major stage of the data curation workflow, from the raw ChEMBL IC50 records to the final QSAR-ready DPP-4 inhibitor dataset.

These output files are used to ensure that the data filtering process is transparent, reproducible, and easy to review.

## Output file list

```text
DPP4_ChEMBL_raw_IC50_deduplicated.csv
DPP4_ChEMBL_IC50_strict_filtered.csv
DPP4_ChEMBL_IC50_strict_records_parent_annotated.csv
DPP4_ChEMBL_IC50_parent_unique_before_duplicate_filter.csv
DPP4_removed_inconsistent_parent_duplicates.csv
DPP4_ChEMBL_IC50_parent_curated_unique.csv
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

## File descriptions

## File descriptions

### 1. `DPP4_ChEMBL_raw_IC50_deduplicated.csv`

This file contains the raw IC50 activity records extracted from ChEMBL after removing exact duplicate activity rows.

### 2. `DPP4_ChEMBL_IC50_strict_filtered.csv`

This file contains IC50 records retained after strict filtering. Records were selected based on standardized activity type, unit, relation, activity value, target organism, and data validity criteria.

### 3. `DPP4_ChEMBL_IC50_strict_records_parent_annotated.csv`

This file contains the strict-filtered IC50 records after molecular structure annotation and parent SMILES processing.

### 4. `DPP4_ChEMBL_IC50_parent_unique_before_duplicate_filter.csv`

This file contains parent-structure-based unique compound records before removing compounds with inconsistent duplicate measurements.

### 5. `DPP4_removed_inconsistent_parent_duplicates.csv`

This file contains compounds removed because their duplicate IC50 or pIC50 values showed inconsistent activity measurements.

### 6. `DPP4_ChEMBL_IC50_parent_curated_unique.csv`

This file contains the curated parent-structure-based unique compound dataset after duplicate handling and consistency filtering.

### 7. `DPP4_QSAR_dataset_parent_cleaned_locked.csv`

This is the final QSAR-ready dataset used for downstream analysis.

This file contains cleaned DPP-4 inhibitor records with valid parent SMILES and pIC50 values. It is used as the input dataset for chemical space analysis, QSAR modeling, and docking compound selection.


## Final dataset

The main final output file is:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file should be used for the next steps of the project.

## Notes

Intermediate output files are kept to make the curation workflow traceable. These files help show how the final QSAR-ready dataset was generated from the original ChEMBL bioactivity records.
