# DPP-4 QSAR and Molecular Docking Project

This repository contains the computational workflow for a QSAR and molecular docking study of human dipeptidyl peptidase-4 (DPP-4) inhibitors.

## Project Overview

Human DPP-4 inhibitor activity data were collected from the ChEMBL database using the target identifier `CHEMBL284`. The dataset was curated using strict IC50 filtering criteria, standardized by parent SMILES, converted to pIC50 values, and prepared for ligand-based QSAR modeling.

The project includes data curation, chemical-space analysis, QSAR regression modeling, Y-randomization validation, docking-candidate selection, ligand preparation, receptor preparation, and molecular docking analysis using the human DPP-4 crystal structure 2RGU.

## Repository Structure

```text
dpp4-qsar-docking/
│
├── README.md
│
├── 01_data_curation/
│   ├── README.md
│   ├── colab_scripts/
│   ├── input_files/
│   └── output_files/
│
├── 02_chemical_space_analysis/
│   ├── README.md
│   ├── colab_scripts/
│   ├── input_files/
│   └── output_files/
│
├── 03_QSAR_Regression/
│   ├── README.md
│   ├── 01_QSAR_regression_analysis/
│   └── 02_Y-randomization/
│
└── 04_Molecular_Docking/
    ├── README.md
    ├── docking_grid/
    ├── docking_selection/
    ├── ligands/
    ├── output_files/
    ├── receptor/
    └── scripts/
```

## Workflow Summary

### 1. Data Curation

The `01_data_curation/` directory contains the workflow used to collect and curate human DPP-4 inhibitor IC50 records from ChEMBL.

This step includes:

```text
IC50 activity filtering
Human DPP-4 target filtering
Parent SMILES standardization
Duplicate removal
Inconsistent duplicate filtering
pIC50 conversion
Activity-class assignment
Generation of the final QSAR-ready dataset
```

The final curated dataset generated from this step was used for chemical-space analysis, QSAR regression, Y-randomization validation, and docking-candidate selection.

### 2. Chemical-Space Analysis

The `02_chemical_space_analysis/` directory contains the chemical-space visualization workflow.

This step includes PCA and t-SNE visualization of curated DPP-4 inhibitors using Morgan fingerprints. The analysis was used to inspect chemical diversity, visualize activity-class distribution, evaluate train/test chemical-space coverage, and support representative compound selection for docking.

### 3. QSAR Regression and Validation

The `03_QSAR_Regression/` directory contains the main QSAR regression modeling and validation workflows.

This stage is divided into:

```text
01_QSAR_regression_analysis/
02_Y-randomization/
```

The QSAR regression workflow includes Morgan fingerprint generation, train/test splitting, baseline model comparison, 5-fold cross-validation, hyperparameter tuning, final model selection, independent test-set evaluation, and prediction/residual analysis.

Y-randomization was performed to evaluate whether the final QSAR model learned a meaningful structure–activity relationship rather than chance correlation.

### 4. Molecular Docking

The `04_Molecular_Docking/` directory contains the docking-related workflow, including receptor files, ligand preparation, docking grid information, docking-candidate selection, docked ligand outputs, docking score summaries, and 2D protein–ligand interaction diagrams.

The human DPP-4 crystal structure 2RGU was used as the receptor. Representative ligands were selected from the curated QSAR dataset and prepared as SDF files for docking.

Docking was used as supportive structural interpretation, not as the primary validation method for QSAR model performance.

## Main Dataset

The final curated dataset used for downstream analysis is:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This dataset contains curated human DPP-4 inhibitor records with valid parent SMILES, median pIC50 values, and activity-class labels.

Main columns include:

```text
molecule_chembl_id
parent_smiles
pIC50_median
activity_class
```

## Molecular Representation

Compounds were represented using Morgan fingerprints.

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Include chirality: True
```

Morgan fingerprints were used for QSAR regression modeling, chemical-space visualization, and diversity-based docking-candidate selection.

## Activity Classes

Compounds were assigned into three activity classes based on pIC50 values:

```text
Low:      pIC50 < 6
Moderate: 6 ≤ pIC50 < 7
High:     pIC50 ≥ 7
```

## QSAR Modeling

The QSAR regression workflow compared several machine-learning regression models, including tree-based models, boosting models, support vector regression, k-nearest neighbors, and a dummy baseline.

Model performance was evaluated using:

```text
R²
RMSE
MAE
Train-test R² gap
Cross-validation performance
Independent test-set performance
```

The final model was selected based on tuned cross-validation performance. The independent test set was used only for final model evaluation.

## Y-Randomization Validation

Y-randomization was performed by randomly shuffling the training-set pIC50 values while keeping the molecular fingerprints unchanged. The randomized-label model performance was then compared with the real model performance.

This validation step was used to assess whether the final QSAR model captured a meaningful structure–activity relationship rather than random correlation.

## Docking Receptor

The docking workflow used the human DPP-4 crystal structure:

```text
PDB ID: 2RGU
Protein: Human dipeptidyl peptidase-4
Reference ligand: 356 / BI 1356
```

The co-crystallized ligand was used to inspect the DPP-4 inhibitor-binding pocket and guide docking grid placement.

## Docking Search Space

The final docking search space used for AutoDock Vina docking was defined in PyRx as follows:

```text
Vina search space center:
X = 50.7470
Y = 48.6659
Z = 30.5131

Search space dimensions:
X = 29.6791 Å
Y = 29.5164 Å
Z = 29.7007 Å
```

The PyMOL-based grid estimate was used only during preliminary binding-site inspection. The PyRx/Vina search-space values above correspond to the final docking setup used for the docking runs.

## Software and Packages

The computational workflow used the following tools and Python packages:

```text
Python
Google Colab
pandas
numpy
RDKit
scikit-learn
xgboost
matplotlib
joblib
PyMOL
PyRx
AutoDock Vina
Discovery Studio Visualizer
```

## Notes

This repository is intended to document the computational workflow used for DPP-4 QSAR modeling and molecular docking. Intermediate files are retained to make the workflow transparent and reproducible.

The QSAR and docking results are intended to support structure–activity relationship interpretation and compound prioritization. Experimental validation is required before drawing biological conclusions.

