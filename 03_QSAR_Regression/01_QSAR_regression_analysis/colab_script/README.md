# Colab Script

This directory contains the Google Colab notebook used for the DPP-4 QSAR regression analysis.

## Notebook

```text
DPP4_QSAR_ver5.ipynb
```

This notebook performs ligand-based QSAR regression modeling for curated human DPP-4 inhibitors using Morgan fingerprints and machine-learning regression models.

## Purpose

The notebook was used to build, compare, tune, and evaluate QSAR regression models for predicting DPP-4 inhibitory potency.

The regression target was:

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
Setup. Install and import libraries
Step 1. Load QSAR dataset
Step 2. Check missing values and duplicated structures
Step 3. Convert SMILES to RDKit molecules
Step 4. Generate Morgan fingerprints
Step 5. Train/test split
Step 6. First QSAR regression model comparison
Step 7. Baseline 5-fold cross-validation
Step 8. Hyperparameter tuning for top models
Step 9. Final model selection and reproducibility record
Step 10. Cross-validated prediction for the final model on the training set
Step 11. Predicted vs experimental plot for the independent test set
Step 12. Residual plot for the independent test set
Final step. Save final test-set predictions and diagnostic figures
```

## Molecular Representation

Morgan fingerprints were generated using RDKit with the following settings:

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Include chirality: True
```

## Model Development

The notebook compared the following regression models:

```text
Dummy Regressor
Ridge Regression
Random Forest
Extra Trees
Gradient Boosting
HistGradient Boosting
SVR RBF
KNN Regressor
XGBoost
```

Model performance was evaluated using:

```text
R²
MAE
RMSE
Train-test R² gap
```

## Cross-Validation

A 5-fold stratified cross-validation strategy was used on the training set. Because the target variable was continuous, `pIC50_median` values were first divided into quantile-based bins before applying stratified cross-validation.

The independent test set was not used during cross-validation or hyperparameter tuning.

## Hyperparameter Tuning

The top-performing models were tuned using `RandomizedSearchCV`:

```text
Random Forest
HistGradient Boosting
XGBoost
```

## Final Model Selection

The final model was selected based on the following rule:

```text
Select the tuned model with the highest cross-validation R².
```

The independent test set was used only for final model evaluation.

## Main Outputs

The notebook generates model comparison tables, cross-validation results, tuned model results, final model metadata, saved model object, prediction tables, and diagnostic plots.

Detailed output descriptions are provided in:

```text
../output_files/README.md
```

## Required Packages

The main Python packages used in this notebook are:

```text
pandas
numpy
rdkit
scikit-learn
xgboost
matplotlib
joblib
```

## Reproducibility

A fixed random seed was used:

```text
RANDOM_STATE = 42
```

The final model, model-selection table, metadata file, prediction tables, and diagnostic figures were saved to support reproducibility.
