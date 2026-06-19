# Colab Script

This directory contains the Google Colab notebook used for the DPP-4 QSAR regression workflow. The notebook builds ligand-based regression models to predict DPP-4 inhibitory potency using curated parent SMILES and median pIC50 values.

## Notebook

```text
DPP4_QSAR_ver5.ipynb
```

## Purpose

The purpose of this notebook is to:

```text
1. Load the curated DPP-4 QSAR dataset
2. Check missing values, duplicated structures, and activity distribution
3. Convert parent SMILES into RDKit molecule objects
4. Generate Morgan fingerprints with chirality
5. Split the dataset into training and independent test sets
6. Compare baseline regression models
7. Perform 5-fold cross-validation
8. Tune selected top-performing models
9. Select the final model using cross-validation performance
10. Evaluate the final model on the independent test set
11. Save model outputs, predictions, metadata, and figures
```

## Input File

The notebook expects the curated dataset to be available in the working directory:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

The main columns used are:

```text
molecule_chembl_id
parent_smiles
pIC50_median
activity_class
```

## Molecular Representation

Molecular structures are represented using Morgan fingerprints generated with RDKit.

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Include chirality: True
```

The target variable for regression modeling is:

```text
pIC50_median
```

## Model Development

The notebook compares several regression algorithms, including:

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

Model performance is evaluated using:

```text
R²
MAE
RMSE
Train-test R² gap
```

## Cross-Validation

A 5-fold stratified cross-validation strategy is used on the training set. Because the target variable is continuous, pIC50 values are first divided into quantile-based bins before applying stratified splitting.

The independent test set is not used during cross-validation or hyperparameter tuning.

## Hyperparameter Tuning

The top-performing models are tuned using `RandomizedSearchCV`. The tuned models include:

```text
Random Forest
HistGradient Boosting
XGBoost
```

The final model is selected based on the highest tuned cross-validation R².

## Final Model Evaluation

After model selection, the final model is evaluated on the independent test set. The notebook generates:

```text
Predicted vs experimental pIC50 plot
Residual plot
Final test-set prediction table
Final model metadata
Saved model object
```

## Main Output Files

The notebook saves the following key output files:

```text
DPP4_Morgan_QSAR_model_comparison.csv
DPP4_Morgan_QSAR_baseline_CV_results.csv
DPP4_Morgan_QSAR_tuned_model_results.csv
DPP4_QSAR_final_model_selection_reproducibility.csv
DPP4_QSAR_final_model_metadata.json
DPP4_QSAR_final_model.joblib
DPP4_QSAR_final_test_predictions.csv
DPP4_QSAR_predicted_vs_residual_testset.png
```

## Reproducibility Notes

The notebook uses a fixed random seed:

```text
RANDOM_STATE = 42
```

The final model-selection rule is:

```text
Select the tuned model with the highest cross-validation R².
```

The independent test set is used only for final evaluation, not for model selection.

## Required Python Packages

The main packages used in the notebook are:

```text
pandas
numpy
rdkit
scikit-learn
xgboost
matplotlib
joblib
```

## Notes

This notebook performs ligand-based QSAR regression using 2D molecular fingerprints. The model should be interpreted as a predictive machine-learning model, not as direct structural validation of DPP-4 binding. Docking and structural interpretation are handled separately in the docking analysis directory.

