# Colab Scripts

This folder contains the Google Colab notebook used for DPP-4 inhibitor chemical-space analysis.

## Notebook

```text
DPP4_Chemical_Space_ver3.ipynb
```

This notebook was used to visualize the chemical space of curated human DPP-4 inhibitors using Morgan fingerprints, PCA, and t-SNE. It was also used to inspect the train/test chemical-space distribution and to map the final docking candidates back onto the chemical-space coordinates for figure preparation.

## Purpose

The main purpose of this notebook is to analyze the structural distribution of the curated DPP-4 inhibitor dataset and visualize the final docking candidates within the overall DPP-4 chemical space.

The workflow includes:

* Loading the final QSAR-ready DPP-4 inhibitor dataset
* Checking required columns for SMILES, pIC50, and activity class
* Converting parent SMILES into RDKit molecule objects
* Generating chirality-aware Morgan fingerprints
* Performing PCA-based chemical-space visualization
* Performing t-SNE-based chemical-space visualization
* Visualizing compounds by activity class
* Checking train/test chemical-space distribution
* Saving PCA and t-SNE coordinates
* Loading the final docking candidate list generated from the docking-selection workflow
* Matching final docking candidates to PCA and t-SNE coordinates using ChEMBL compound identifiers
* Drawing final docking candidate structures
* Highlighting final docking candidates on PCA and t-SNE plots
* Combining PCA, t-SNE, and structure panels into final report figures

## Input datasets

The notebook uses the final curated QSAR-ready dataset generated from the data-curation workflow:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

It also uses the final docking candidate table generated from the docking-selection workflow:

```text
DPP4_selected_docking_candidates.csv
```

The QSAR dataset is used to calculate the full chemical-space coordinates. The docking candidate table is used only after PCA and t-SNE have been calculated, so that the final docking ligands can be overlaid onto the existing chemical-space map.

## Required columns

The QSAR-ready input dataset should contain the following columns:

```text
parent_smiles
pIC50_median
activity_class
molecule_chembl_id
```

The final docking candidate table should contain:

```text
candidate_id
molecule_chembl_id
parent_smiles
pIC50_median
activity_class
selection_group
```

Additional compound information, such as preferred compound names and molecular descriptors, may also be included when available.

## Fingerprint settings

Morgan fingerprints were generated using the following settings:

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Chirality: included
```

Chirality was included in the final version of the chemical-space workflow to better represent stereochemical differences between compounds and to maintain consistency with the QSAR modeling workflow.

## Required Python packages

The notebook uses the following main packages:

```text
pandas
numpy
matplotlib
scikit-learn
rdkit
Pillow
```

In Google Colab, RDKit can be installed using:

```python
!pip install -q rdkit
```

## Main workflow

The notebook is organized into the following steps:

```text
Step 1   Load QSAR dataset
Step 2   Convert SMILES to RDKit molecules
Step 3   Generate Morgan fingerprints
Step 4   Check whether chirality changes the dataset
Step 5   Perform PCA chemical-space analysis
Step 6   Perform t-SNE chemical-space analysis
Step 7   Define activity-class colors
Step 8   Generate combined PCA and t-SNE figure
Step 9   Check train/test chemical-space distribution
Step 10  Save chemical-space coordinates
Step 11  Match final docking candidates to chemical-space coordinates
Step 12  Draw final docking candidate structures
Step 13  Plot final docking candidates on PCA and t-SNE
Step 14  Combine PCA, t-SNE, and structure panels into final figure layouts
```

## Activity classes

Compounds were visualized according to the activity classes assigned during data curation:

```text
Low:      pIC50 < 6
Moderate: 6 ≤ pIC50 < 7
High:     pIC50 ≥ 7
```

## Train/test chemical-space check

The notebook includes a train/test chemical-space visualization to inspect whether the training and test sets cover similar regions of the DPP-4 inhibitor chemical space.

The split was performed using:

```text
Test size: 20%
Random state: 42
```

pIC50-based bins were used to support a more balanced split of activity values.

## Final docking candidate mapping

The final docking candidates were selected in a separate docking-selection workflow. In this notebook, those candidates were loaded and matched to the PCA and t-SNE coordinates using ChEMBL compound identifiers.

This step does not recalculate PCA or t-SNE. The chemical-space coordinates were generated from the full curated QSAR dataset, and the docking candidates were overlaid onto the existing maps. This was done to show where the final docking ligands are located within the overall DPP-4 inhibitor chemical space and to improve transparency in ligand selection.

## Output files

The notebook generates the following output files:

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

## Main final outputs

The main final outputs from this notebook are:

```text
DPP4_chemical_space_coordinates.csv
DPP4_chemical_space_PCA_tSNE.png
DPP4_train_test_chemical_space.png
DPP4_final_docking_candidates_chemical_space.csv
DPP4_final_docking_candidates_chemical_space_horizontal_no_title.png
```

These files are used for chemical-space interpretation, train/test split inspection, docking-candidate visualization, and final report figure generation.

## Notes

Some figure files are intermediate versions generated during figure optimization. They are retained to make the visualization workflow transparent and reproducible.

For the final report, the horizontal figure without an overall title is recommended because the figure caption can provide the full explanation.

