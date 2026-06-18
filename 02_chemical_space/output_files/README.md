# Output Files

This folder contains the output files generated from the DPP-4 chemical-space analysis notebook.

## Purpose

The files in this folder document the chemical-space visualization workflow for the curated human DPP-4 inhibitor dataset.

The chemical-space analysis was performed using the full curated QSAR dataset. PCA and t-SNE coordinates were generated from Morgan fingerprints and used to visualize the structural distribution of DPP-4 inhibitors according to activity class. After final docking candidates were selected in the docking-selection workflow, these candidates were matched back to the chemical-space coordinates and highlighted on the PCA/t-SNE plots.

These outputs support chemical diversity assessment, train/test split inspection, docking-candidate visualization, and figure preparation for the final report.

## Output file list

```text
DPP4_chemical_space_coordinates.csv
DPP4_chemical_space_PCA_tSNE.png
DPP4_train_test_chemical_space.png
DPP4_final_docking_candidates_chemical_space.csv
DPP4_final_docking_candidate_structures.png
DPP4_final_docking_candidates_chemical_space_with_structure_panel_C.png
DPP4_final_docking_candidates_chemical_space_horizontal_with_title.png
DPP4_final_docking_candidates_chemical_space_horizontal_no_title.png
```

## File descriptions

### `DPP4_chemical_space_coordinates.csv`

This file contains the PCA and t-SNE coordinates generated from Morgan fingerprints of the curated DPP-4 inhibitor dataset.

The file can be used to reproduce the chemical-space plots and to identify the positions of compounds within the full curated dataset.

### `DPP4_chemical_space_PCA_tSNE.png`

This figure shows the chemical-space distribution of curated DPP-4 inhibitors using PCA and t-SNE visualization.

Compounds are colored according to activity class: low, moderate, or high activity.

### `DPP4_train_test_chemical_space.png`

This figure shows the distribution of training and test compounds in chemical space.

It was used to check whether the train/test split covered a similar chemical distribution across the curated DPP-4 inhibitor dataset.

### `DPP4_final_docking_candidates_chemical_space.csv`

This file contains the final docking candidates matched to their PCA and t-SNE chemical-space coordinates.

The docking candidates were selected in the docking-selection notebook and then merged with the chemical-space coordinate table using the ChEMBL compound identifier. This file was used to highlight the final docking ligands on the PCA and t-SNE plots.

### `DPP4_final_docking_candidate_structures.png`

This figure shows the chemical structures of the final docking candidates.

The compounds are labeled by candidate ID and annotated with their selection group and pIC50 value.

### `DPP4_final_docking_candidates_chemical_space_with_structure_panel_C.png`

This combined figure contains PCA and t-SNE chemical-space plots together with a structure panel of the final docking candidates.

This version uses a vertical layout, with PCA and t-SNE on the top row and chemical structures below.

### `DPP4_final_docking_candidates_chemical_space_horizontal_with_title.png`

This combined figure contains PCA, t-SNE, and final docking candidate structures in a horizontal A–B–C layout.

This version includes an overall figure title.

### `DPP4_final_docking_candidates_chemical_space_horizontal_no_title.png`

This combined figure contains PCA, t-SNE, and final docking candidate structures in a horizontal A–B–C layout.

This version does not include an overall figure title and is intended for final report use, where the figure caption provides the full description.

## Main final outputs

The main files used for the final report are:

```text
DPP4_chemical_space_PCA_tSNE.png
DPP4_train_test_chemical_space.png
DPP4_final_docking_candidates_chemical_space.csv
DPP4_final_docking_candidates_chemical_space_horizontal_no_title.png
```

## Notes

The PCA and t-SNE coordinates were generated from the full curated QSAR dataset and were not recalculated during docking-candidate visualization. The final docking candidates were overlaid onto the existing chemical-space coordinates to show where the selected docking ligands are located within the overall DPP-4 inhibitor chemical space.


