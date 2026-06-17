# 03_Chemical_Space

This folder contains the chemical-space visualization workflow for the curated human DPP-4 inhibitor dataset.

## Purpose

This step visualizes the structural distribution of curated DPP-4 inhibitors using Morgan fingerprints, PCA, and t-SNE. The results were used to inspect chemical diversity and support the selection of representative compounds for docking.

## Input

- 07_DPP4_QSAR_dataset_parent_cleaned_locked

## Main script

- DPP4_Chemical_Space_ver2.ipynb

## Output

- DPP4_chemical_space_PCA_tSNE.png
- DPP4_train_test_chemical_space.png
- DPP4_chemical_space_selected_compounds_cleaner.png
- DPP4_selected_structures_2_per_class.png
- DPP4_chemical_space_with_structure_panel_C.png
- DPP4_chemical_space_horizontal_ABC_final.png
- DPP4_chemical_space_horizontal_ABC_final_ver2.png
- DPP4_chemical_space_coordinates.csv
- DPP4_selected_compounds_2_per_class.csv

## Notes

Morgan fingerprints were generated using radius 2 and 2048 bits. Chirality was included in the final version of the workflow.
