# Output Files

This folder contains the output files generated from the DPP-4 chemical-space analysis notebook.

## Purpose

The files in this folder document the chemical-space visualization workflow for the curated human DPP-4 inhibitor dataset.

These outputs include PCA and t-SNE coordinates, chemical-space plots, selected representative compounds, selected compound structures, and train/test split visualization. The files are used to support chemical diversity assessment, compound selection for docking, and figure preparation for the final report.

## Output file list

```text
DPP4_chemical_space_coordinates.csv
DPP4_chemical_space_PCA_tSNE.png
DPP4_chemical_space_horizontal_ABC_final.png
DPP4_chemical_space_horizontal_ABC_final_ver2.png
DPP4_chemical_space_selected_compounds_cleaner.png
DPP4_chemical_space_with_structure_panel_C.png
DPP4_selected_compounds_2_per_class.csv
DPP4_selected_structures_2_per_class.png
DPP4_train_test_chemical_space.png
```

## File descriptions

### `DPP4_chemical_space_coordinates.csv`

This file contains the PCA and t-SNE coordinates generated from Morgan fingerprints of the curated DPP-4 inhibitor dataset.

The file can be used to reproduce the chemical-space plots and to identify the positions of selected compounds.

### `DPP4_chemical_space_PCA_tSNE.png`

This figure shows the chemical-space distribution of curated DPP-4 inhibitors using PCA and t-SNE visualization.

Compounds are colored according to activity class.

### `DPP4_chemical_space_horizontal_ABC_final.png`

This is a combined horizontal figure containing PCA, t-SNE, and selected compound structures as three panels.

This figure was prepared for use in the final report.

### `DPP4_chemical_space_horizontal_ABC_final_ver2.png`

This is the revised version of the combined horizontal PCA, t-SNE, and structure-panel figure.

This version may be used as the final chemical-space figure if the layout is clearer.

### `DPP4_chemical_space_selected_compounds_cleaner.png`

This figure shows the chemical-space visualization with selected representative compounds highlighted.

The selected compounds were used for further structure-based interpretation and docking preparation.

### `DPP4_chemical_space_with_structure_panel_C.png`

This figure contains the chemical-space plots together with an additional compound-structure panel.

It was generated during figure optimization.

### `DPP4_selected_compounds_2_per_class.csv`

This file contains the selected representative DPP-4 inhibitors.

Two compounds were selected from each activity class to represent high-, moderate-, and low-activity compounds.

### `DPP4_selected_structures_2_per_class.png`

This figure shows the chemical structures of the selected representative compounds.

The compounds are labeled and grouped according to activity class.

### `DPP4_train_test_chemical_space.png`

This figure shows the distribution of training and test compounds in chemical space.

It was used to check whether the train/test split covered a similar chemical distribution.

## Main final outputs

The main files used for the final report are:

```text
DPP4_chemical_space_horizontal_ABC_final_ver2.png
DPP4_selected_compounds_2_per_class.csv
DPP4_train_test_chemical_space.png
```

## Notes

Some figures in this folder are intermediate versions generated during figure preparation. They are retained to make the visualization workflow transparent and reproducible.

For final report writing, the revised combined chemical-space figure and the selected compound table should be used.
