# 01_QSAR_Regression_Analysis

This folder contains the QSAR regression workflow used to model the inhibitory activity of curated human DPP-4 inhibitors. The regression target was `pIC50_median`, calculated from curated IC50 values. Molecular structures were represented using Morgan fingerprints with chirality information included.

## Folder Structure

```text
01_QSAR_regression_analysis/
│
├── colab_script/
│   └── QSAR regression notebook or exported Colab script
│
├── input_files/
│   └── DPP4_QSAR_dataset_parent_cleaned_locked.csv
│
├── output_files/
│   ├── DPP4_Morgan_QSAR_model_comparison.csv
│   ├── DPP4_Morgan_QSAR_baseline_CV_results.csv
│   ├── DPP4_Morgan_QSAR_tuned_model_results.csv
│   ├── DPP4_QSAR_final_model_selection_reproducibility.csv
│   ├── DPP4_QSAR_final_model_metadata.json
│   ├── DPP4_QSAR_final_model.joblib
│   ├── DPP4_QSAR_final_test_predictions.csv
│   └── DPP4_QSAR_predicted_vs_residual_testset.png
│
└── README.md
```

## Objective

The objective of this analysis was to build and evaluate machine-learning regression models for predicting DPP-4 inhibitory potency from molecular structure. The workflow was designed to compare multiple baseline regression algorithms, perform cross-validation, tune selected top-performing models, and select a final model using a reproducible model-selection rule.

## Model Summary

The QSAR models were developed using Morgan fingerprints with chirality information included. Several regression algorithms were compared, and the final model was selected based on tuned cross-validation performance. The independent test set was used only for final model evaluation.

## Notes

Detailed code, workflow steps, model settings, and reproducibility information are provided in the `colab_script/` directory.
