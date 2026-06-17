# 02_QSAR_Regression

This folder contains the QSAR regression modeling and validation workflows for the curated human DPP-4 inhibitor dataset.

## Purpose

The purpose of this step is to build regression models that predict DPP-4 inhibitory activity from molecular structure and to evaluate whether the final QSAR model is reliable.

The target variable for regression modeling is pIC50. Molecular structures were represented using Morgan fingerprints, and several machine-learning regression models were evaluated. Model reliability was further assessed using Y-randomization validation.

## Folder structure

```text
02_QSAR_Regression/
├── README.md
├── 01_QSAR_regression_analysis/
└── 02_Y-randomization/
```

## Workflow overview

The QSAR regression workflow is divided into two main parts:

### 1. QSAR regression analysis

The `01_QSAR_regression_analysis/` folder contains the main regression modeling workflow.

This step includes:

* Loading the final QSAR-ready DPP-4 inhibitor dataset
* Generating Morgan fingerprints from parent SMILES
* Applying chirality-aware fingerprint generation
* Splitting the dataset into training and test sets
* Training multiple regression models
* Evaluating model performance using R², RMSE, and MAE
* Comparing model performance
* Selecting the final regression model
* Saving model performance tables and prediction results

### 2. Y-randomization validation

The `02_Y-randomization/` folder contains the Y-randomization validation workflow.

This step includes:

* Randomly shuffling the pIC50 values
* Rebuilding the QSAR model using randomized target values
* Repeating the randomization procedure
* Comparing real model performance with randomized model performance
* Assessing whether the model learned meaningful structure–activity relationships

## Input dataset

The main input file for this workflow is the final curated QSAR-ready dataset:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This dataset was generated from the data curation workflow and contains cleaned human DPP-4 inhibitor records with valid parent SMILES and pIC50 values.

## Molecular representation

Compounds were represented using Morgan fingerprints.

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Chirality: included
```

Morgan fingerprints were selected because they provide a simple and widely used molecular representation for conventional QSAR modeling.

## Target variable

The regression target variable was:

```text
pIC50_median
```

pIC50 values were used instead of raw IC50 values because they provide a logarithmic activity scale suitable for QSAR regression analysis.

## Model evaluation

Regression models were evaluated using:

```text
R²
RMSE
MAE
```

These metrics were calculated for cross-validation and test-set prediction performance.

## Main outputs

The main outputs from this folder include:

```text
QSAR regression performance tables
Cross-validation results
Test-set prediction results
Predicted-versus-observed plots
Y-randomization result tables
Y-randomization summary plot
```

## Notes

This folder represents the main predictive modeling stage of the DPP-4 QSAR project. The QSAR regression results should be interpreted together with the chemical-space analysis and Y-randomization validation.

The QSAR models are intended to support structure–activity relationship interpretation and compound prioritization, not to replace experimental validation.

