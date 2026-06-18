# 02_Chemical_Space

This folder contains the chemical-space visualization workflow for the curated human DPP-4 inhibitor dataset.

## Purpose

This step visualizes the structural distribution of curated DPP-4 inhibitors using Morgan fingerprints, PCA, and t-SNE. The chemical-space analysis was performed using the full curated QSAR dataset to inspect chemical diversity and activity-class distribution.

After the final docking candidates were selected in the docking-selection workflow, they were matched back to the PCA and t-SNE coordinates and highlighted on the chemical-space plots. This was done to show where the docking ligands are located within the overall DPP-4 inhibitor chemical space and to improve the transparency of ligand selection.

## Input

* `DPP4_QSAR_dataset_parent_cleaned_locked.csv`
* `DPP4_selected_docking_candidates.csv`

## Main script

* `DPP4_Chemical_Space_ver3.ipynb`

## Output

* `DPP4_chemical_space_coordinates.csv`
* `DPP4_chemical_space_PCA_tSNE.png`
* `DPP4_train_test_chemical_space.png`
* `DPP4_final_docking_candidates_chemical_space.csv`
* `DPP4_final_docking_candidate_structures.png`
* `DPP4_final_docking_candidates_chemical_space_with_structure_panel_C.png`
* `DPP4_final_docking_candidates_chemical_space_horizontal_with_title.png`
* `DPP4_final_docking_candidates_chemical_space_horizontal_no_title.png`

## Main final outputs

The main files used for final report preparation are:

* `DPP4_chemical_space_PCA_tSNE.png`
* `DPP4_train_test_chemical_space.png`
* `DPP4_final_docking_candidates_chemical_space.csv`
* `DPP4_final_docking_candidates_chemical_space_horizontal_no_title.png`

## Notes

Morgan fingerprints were generated using radius 2 and 2048 bits. Chirality was included in the final version of the workflow.

PCA and t-SNE were calculated from the full curated DPP-4 QSAR dataset. The final docking candidates were not used to recalculate the chemical-space coordinates; they were only overlaid onto the existing PCA/t-SNE maps using ChEMBL compound identifiers.
