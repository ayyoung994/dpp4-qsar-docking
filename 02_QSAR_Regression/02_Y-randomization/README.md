# 02_Y-randomization

This folder contains the Y-randomization validation workflow for the DPP-4 QSAR regression model.

## Purpose

The purpose of this step is to evaluate whether the DPP-4 QSAR regression model learned meaningful structure–activity relationships rather than chance correlations.

Y-randomization was performed by randomly shuffling the pIC50 values while keeping the molecular descriptors unchanged. The model was then rebuilt using the randomized target values. If the original model performs clearly better than the randomized models, this supports the reliability of the QSAR model.

## Folder structure

```text
02_Y-randomization/
├── README.md
├── colab_script/
├── input_files/
└── output_files/
```

## Workflow overview

The Y-randomization workflow includes:

* Loading the final QSAR-ready DPP-4 inhibitor dataset
* Generating Morgan fingerprints from parent SMILES
* Using chirality-aware fingerprint generation
* Reproducing the same train/test split used in QSAR regression
* Defining the final tuned Random Forest regression model
* Calculating real model cross-validation performance
* Randomly shuffling pIC50 values
* Rebuilding the model with randomized target values
* Repeating the randomization procedure
* Comparing real model performance with randomized model performance
* Exporting summary tables and visualization files

## Input

The main input file is the final curated QSAR-ready dataset:

```text
07_DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This file should contain valid parent SMILES and pIC50 values.

## Main script

The main notebook for this step is stored in the `colab_script/` folder:

```text
DPP4_Y_Randomization_ver2.ipynb
```

## Output

The output files are stored in the `output_files/` folder:

```text
DPP4_RF_tuned_Y_randomization_results.csv
DPP4_RF_tuned_Y_randomization_summary.csv
DPP4_Y_randomization_plot.png
```

## Interpretation

The Y-randomization test supports model reliability when the real QSAR model shows higher predictive performance than models trained with randomized pIC50 values.

If randomized models show performance similar to the real model, this may indicate chance correlation, data leakage, or instability in the modeling workflow.

## Notes

This folder is part of the QSAR regression validation workflow. The Y-randomization results should be interpreted together with the main QSAR regression results, cross-validation performance, test-set performance, and chemical-space analysis.

