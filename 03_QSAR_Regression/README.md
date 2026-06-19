# 03_QSAR_Regression

This directory contains the QSAR regression modeling and validation workflows for the curated human DPP-4 inhibitor dataset.

## Purpose

The purpose of this stage was to develop ligand-based regression models for predicting DPP-4 inhibitory activity from molecular structure and to evaluate whether the final QSAR model was reliable.

The regression target was:

```text
pIC50_median
```

Molecular structures were represented using Morgan fingerprints with chirality information included. Several machine-learning regression models were compared, and the final model was selected based on cross-validation performance. Model reliability was further assessed using Y-randomization validation.

## Directory Structure

```text
03_QSAR_Regression/
│
├── 01_QSAR_regression_analysis/
│   └── Main QSAR regression modeling workflow
│
├── 02_Y-randomization/
│   └── Y-randomization validation workflow
│
└── README.md
```

## Workflow Overview

The QSAR regression workflow is divided into two main parts.

### 1. QSAR Regression Analysis

The `01_QSAR_regression_analysis/` directory contains the main regression modeling workflow.

This step includes:

```text
Dataset loading and checking
Morgan fingerprint generation
Train/test splitting
Baseline regression model comparison
5-fold cross-validation
Hyperparameter tuning
Final model selection
Independent test-set evaluation
Prediction and residual analysis
Saving model outputs and reproducibility files
```

The final model was selected using tuned cross-validation performance. The independent test set was used only for final model evaluation.

### 2. Y-Randomization Validation

The `02_Y-randomization/` directory contains the Y-randomization validation workflow.

This step evaluates whether the final QSAR model learned a meaningful structure–activity relationship rather than a chance correlation.

The Y-randomization workflow includes:

```text
Reproducing the QSAR feature matrix
Shuffling the training-set pIC50 values
Rebuilding models with randomized target values
Repeating the randomization procedure
Comparing real-model performance with randomized-model performance
```

## Input Dataset

The main input file for this workflow is:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This dataset contains curated human DPP-4 inhibitor records with valid parent SMILES and median pIC50 values.

Main columns used in this workflow include:

```text
molecule_chembl_id
parent_smiles
pIC50_median
activity_class
```

## Molecular Representation

Compounds were represented using Morgan fingerprints generated from parent SMILES.

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Include chirality: True
```

Morgan fingerprints were used as the molecular descriptors for conventional QSAR regression modeling.

## Model Evaluation

Regression models were evaluated using:

```text
R²
RMSE
MAE
Train-test R² gap
Cross-validation performance
Independent test-set performance
```

The independent test set was not used during hyperparameter tuning or final model selection.

## Main Outputs

The main outputs from this directory include:

```text
QSAR model comparison tables
Cross-validation result tables
Tuned model result tables
Final model selection records
Saved final model object
Final test-set prediction tables
Predicted-versus-experimental plots
Residual plots
Y-randomization result tables
Y-randomization summary plot
```

## Notes

This directory represents the main predictive modeling and model-validation stage of the DPP-4 QSAR project.

The QSAR models are intended to support structure–activity relationship interpretation and compound prioritization. They do not replace experimental validation.

Detailed workflow descriptions, input file descriptions, and output file descriptions are provided inside each subdirectory.

