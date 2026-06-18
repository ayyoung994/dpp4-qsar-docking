# Input Files

This folder contains the input files used in the DPP-4 chemical-space analysis notebook.

## Input file list

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
DPP4_selected_docking_candidates.csv
```

## File descriptions

### `DPP4_QSAR_dataset_parent_cleaned_locked.csv`

This file is the final curated QSAR-ready dataset for human DPP-4 inhibitors. It contains standardized parent SMILES, pIC50 values, activity classes, and compound identifiers.

This dataset was used as the main input for chemical-space analysis. Morgan fingerprints were generated from the parent SMILES, and PCA and t-SNE were calculated from the full curated dataset.

### `DPP4_selected_docking_candidates.csv`

This file contains the final ligands selected for molecular docking in the docking-selection workflow.

In the chemical-space notebook, this file was used only after PCA and t-SNE coordinates had been generated from the full QSAR dataset. The docking candidates were matched back to the chemical-space coordinates using ChEMBL compound identifiers and highlighted on the PCA/t-SNE plots.

## Notes

The final docking candidates were not used to calculate PCA or t-SNE. They were overlaid onto the existing chemical-space map to show where the selected docking ligands are located within the full curated DPP-4 inhibitor chemical space.
