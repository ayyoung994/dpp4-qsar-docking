# Colab Scripts

This folder contains the Google Colab notebook used for Y-randomization validation of the DPP-4 QSAR regression model.

## Notebook

```text
07_DPP4_Y_Randomization_ver2.ipynb
```

This notebook was used to evaluate whether the final DPP-4 QSAR regression model learned meaningful structure–activity relationships rather than chance correlations.

## Purpose

The main purpose of this notebook is to perform Y-randomization testing for the final QSAR regression model.

Y-randomization was used as a model validation step by randomly shuffling the pIC50 values and rebuilding the model using the same molecular descriptors, model settings, and cross-validation strategy. If the original model performs substantially better than the randomized models, this supports that the model is learning a real relationship between molecular structure and DPP-4 inhibitory activity.

The workflow includes:

* Loading the final QSAR-ready DPP-4 inhibitor dataset
* Converting parent SMILES into RDKit molecule objects
* Generating Morgan fingerprints
* Applying chirality-aware fingerprint generation
* Reproducing the same train/test split used in QSAR modeling
* Defining the final tuned Random Forest regression model
* Performing 5-fold cross-validation on the real training labels
* Randomly shuffling the training pIC50 values
* Rebuilding the model using randomized target values
* Repeating Y-randomization multiple times
* Comparing real model performance against randomized models
* Saving Y-randomization summary tables and figures

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
```

## Fingerprint settings

Morgan fingerprints were generated using the following settings:

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Chirality: included
```

## Model used

The Y-randomization test was performed using the final tuned Random Forest regression model:

```text
Model: Random Forest Regressor
Number of trees: 300
Minimum samples split: 5
Minimum samples leaf: 1
Maximum features: 0.3
Maximum depth: None
Random state: 42
```

## Validation setting

The notebook uses the following validation strategy:

```text
Train/test split: 80:20
Test size: 20%
Random state: 42
Cross-validation: 5-fold StratifiedKFold
Target used for stratification: binned pIC50 values
```

## Y-randomization setting

The target pIC50 values in the training set were randomly shuffled and the model was rebuilt multiple times.

```text
Number of Y-randomization runs: 20
Random seed: 42
```

The same model type and cross-validation strategy were used for the real model and randomized models.

## Main workflow

The notebook is organized into the following steps:

```text
Step 1   Install and import packages
Step 2   Load the QSAR dataset
Step 3   Convert SMILES to RDKit molecules
Step 4   Generate Morgan fingerprints
Step 5   Reproduce the same train/test split
Step 6   Define the final tuned Random Forest model
Step 7   Define cross-validation setting
Step 8   Calculate real cross-validation performance
Step 9   Run Y-randomization
Step 10  Summarize Y-randomization results
Step 11  Plot Y-randomization results
Step 12  Save output files
```

## Evaluation metrics

Model performance was evaluated using:

```text
R²
MAE
RMSE
```

The real model cross-validation performance was compared with the distribution of cross-validation R² values from randomized models.

## Output files

The notebook generates the following output files:

```text
DPP4_RF_tuned_Y_randomization_results.csv
DPP4_RF_tuned_Y_randomization_summary.csv
DPP4_Y_randomization_plot.png
```

## File descriptions

### 1. `DPP4_RF_tuned_Y_randomization_results.csv`

This file contains the cross-validation performance of each Y-randomized model.

Each row represents one randomized run.

### 2. `DPP4_RF_tuned_Y_randomization_summary.csv`

This file summarizes the real model performance and the randomized model performance.

It includes the real cross-validation R², MAE, and RMSE values, as well as the mean, standard deviation, minimum, and maximum R² values from the randomized models.

### 3. `DPP4_Y_randomization_plot.png`

This figure compares the cross-validation R² values of the Y-randomized models with the real model.

The real model is shown as a reference line, while randomized models are shown as individual points.

## Interpretation

The Y-randomization test supports model reliability when the real model shows clearly higher cross-validation performance than the randomized models.

If the randomized models show similar performance to the real model, the QSAR model may be influenced by chance correlation, data leakage, or an unstable model structure.

## Notes

This notebook is used as a validation step for the DPP-4 QSAR regression workflow. It should be interpreted together with the main QSAR regression results, train/test performance, cross-validation results, and chemical-space analysis.
