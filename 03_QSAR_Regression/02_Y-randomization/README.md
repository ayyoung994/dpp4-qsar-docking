# Colab Script

This directory contains the Google Colab notebook used to perform Y-randomization analysis for the final DPP-4 QSAR regression model.

## Notebook

```text
DPP4_Y_Randomization_ver2.ipynb
```

This notebook evaluates whether the final QSAR model performance is likely to arise from a meaningful relationship between molecular fingerprints and DPP-4 inhibitory activity, rather than from chance correlation.

## Purpose

The purpose of this notebook is to validate the final QSAR regression model by comparing the real model performance with models trained using randomly shuffled activity values.

The original regression target was:

```text
pIC50_median
```

The molecular input was:

```text
parent_smiles
```

## Workflow Summary

The notebook includes the following major steps:

```text
Install and import packages
Step 1. Load the curated QSAR dataset
Step 2. Convert SMILES to RDKit molecules
Step 3. Generate Morgan fingerprints
Step 4. Reproduce the same train/test split
Step 5. Define the final tuned Random Forest model
Step 6. Define the 5-fold cross-validation setting
Step 7. Calculate real cross-validation performance
Step 8. Run Y-randomization
Step 9. Summarize Y-randomization results
Step 10. Plot Y-randomization results
Step 11. Save results
```

## Molecular Representation

Morgan fingerprints were generated using RDKit with the following settings:

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Include chirality: True
```

## Final Model Used

The Y-randomization test was performed using the final tuned QSAR model:

```text
Tuned Random Forest
```

The model settings used in this notebook were:

```text
n_estimators = 300
min_samples_split = 5
min_samples_leaf = 1
max_features = 0.3
max_depth = None
random_state = 42
```

## Cross-Validation Setting

A 5-fold stratified cross-validation strategy was used on the training set. Because the target variable was continuous, `pIC50_median` values were divided into quantile-based bins before applying stratified cross-validation.

The independent test set was not used during the Y-randomization procedure.

## Y-Randomization Procedure

The training-set activity values were randomly shuffled while keeping the molecular fingerprints unchanged. The same model type and cross-validation strategy were then applied to the randomized labels.

The notebook used:

```text
N_randomizations = 20
```

The real model CV performance was compared with the distribution of CV performance values from the randomized models.

## Main Output Files

The notebook generates the following output files:

```text
DPP4_RF_tuned_Y_randomization_results.csv
DPP4_RF_tuned_Y_randomization_summary.csv
DPP4_Y_randomization_plot.png
```

Detailed output descriptions are provided in:

```text
../output_files/README.md
```

## Required Packages

The main Python packages used in the notebook are:

```text
pandas
numpy
matplotlib
rdkit
scikit-learn
```

## Reproducibility

A fixed random seed was used:

```text
RANDOM_STATE = 42
```

The same train/test split and cross-validation strategy as the QSAR regression workflow were reproduced to keep the validation procedure consistent.

