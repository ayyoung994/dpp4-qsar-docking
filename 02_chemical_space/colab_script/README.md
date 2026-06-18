# Colab Scripts

This folder contains the Google Colab notebook used for DPP-4 inhibitor chemical-space analysis.

## Notebook

```text
DPP4_Chemical_Space_ver2.ipynb
```

This notebook was used to visualize the chemical space of curated human DPP-4 inhibitors using Morgan fingerprints, PCA, and t-SNE. It was also used to inspect the train/test distribution and select representative compounds for docking.

## Purpose

The main purpose of this notebook is to analyze the structural distribution of the curated DPP-4 inhibitor dataset and prepare representative compounds for downstream molecular docking.

The workflow includes:

* Loading the final QSAR-ready DPP-4 inhibitor dataset
* Checking required columns for SMILES, pIC50, and activity class
* Converting parent SMILES into RDKit molecule objects
* Generating Morgan fingerprints
* Applying chirality-aware fingerprint generation
* Performing PCA-based chemical-space visualization
* Performing t-SNE-based chemical-space visualization
* Visualizing compounds by activity class
* Checking train/test chemical-space distribution
* Saving PCA and t-SNE coordinates
* Selecting representative compounds from each activity class
* Drawing selected compound structures
* Highlighting selected compounds on PCA and t-SNE plots
* Combining PCA, t-SNE, and structure panels into final report figures

## Input dataset

The notebook uses the final curated QSAR-ready dataset generated from the data curation workflow:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

## Required columns

The input dataset should contain the following columns:

```text
parent_smiles
pIC50_median
activity_class
```

Additional compound identifiers, such as ChEMBL compound IDs, are also used when available.

## Fingerprint settings

Morgan fingerprints were generated using the following settings:

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Chirality: included
```

Chirality was included in the final version of the chemical-space workflow to better represent stereochemical differences between compounds.

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

In Google Colab, the required packages can be installed using:

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
Step 11  Select representative compounds
Step 12  Draw selected chemical structures
Step 13  Plot selected compounds on PCA and t-SNE
Step 14  Combine PCA, t-SNE, and structure panels into final figure
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

## Representative compound selection

Representative compounds were selected from each activity class for downstream structure-based interpretation and docking preparation.

The selection included:

```text
2 low-activity compounds
2 moderate-activity compounds
2 high-activity compounds
```

The selected compounds were saved and visualized as chemical structures.

## Output files

The notebook generates the following output files:

```text
DPP4_chemical_space_coordinates.csv
DPP4_chemical_space_PCA_tSNE.png
DPP4_train_test_chemical_space.png
DPP4_selected_compounds_2_per_class.csv
DPP4_selected_structures_2_per_class.png
DPP4_chemical_space_selected_compounds_cleaner.png
DPP4_chemical_space_with_structure_panel_C.png
DPP4_chemical_space_horizontal_ABC_final.png
DPP4_chemical_space_horizontal_ABC_final_ver2.png
```

## Main final outputs

The main final outputs from this notebook are:

```text
DPP4_chemical_space_coordinates.csv
DPP4_selected_compounds_2_per_class.csv
DPP4_selected_structures_2_per_class.png
DPP4_chemical_space_horizontal_ABC_final_ver2.png
DPP4_train_test_chemical_space.png
```

These files are used for chemical-space interpretation, representative compound selection, docking preparation, and final report figure generation.

## Notes

Some figure files are intermediate versions generated during figure optimization. They are retained to make the visualization workflow transparent and reproducible.

For the final report, the revised horizontal figure containing PCA, t-SNE, and selected compound structures should be used as the main chemical-space figure.
