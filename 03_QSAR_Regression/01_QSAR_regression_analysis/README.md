# 01_QSAR_Regression_Analysis

This folder contains the QSAR regression analysis used to model the inhibitory activity of curated human DPP-4 inhibitors. The regression target was `pIC50_median`, and molecular structures were represented using Morgan fingerprints with chirality information included.

## Folder Structure

```text
01_QSAR_regression_analysis/
│
├── colab_script/
│   └── Colab notebook and workflow documentation
│
├── input_files/
│   └── Curated QSAR input dataset
│
├── output_files/
│   └── Model results, prediction outputs, saved model files, and figures
│
└── README.md
```

## Objective

The objective of this analysis was to develop ligand-based machine-learning regression models for predicting DPP-4 inhibitory potency from molecular structure. Multiple regression algorithms were compared, selected models were tuned, and the final model was chosen using a predefined cross-validation-based selection rule.

## Model Summary

The QSAR models were developed using 2048-bit Morgan fingerprints with radius 2 and chirality information included. Baseline regression models were compared using train/test evaluation and 5-fold cross-validation. The top-performing models were further optimized using hyperparameter tuning.

The final model was selected based on tuned cross-validation performance. The independent test set was used only for final model evaluation and diagnostic plotting.

## Directory Notes

Detailed notebook workflow and model settings are documented in:

```text
colab_script/README.md
```

Input dataset information is documented in:

```text
input_files/README.md
```

Generated output files are described in:

```text
output_files/README.md
```


## Notes

Detailed code, workflow steps, model settings, and reproducibility information are provided in the `colab_script/` directory.
