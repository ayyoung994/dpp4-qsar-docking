# 02_Y-randomization

This folder contains the Y-randomization validation analysis for the final DPP-4 QSAR regression model. The analysis was performed to assess whether the final model performance was based on a meaningful relationship between molecular structure and inhibitory activity, rather than chance correlation.

## Folder Structure

```text
02_Y-randomization/
│
├── colab_script/
│   └── Colab notebook and workflow documentation
│
├── input_files/
│   └── Curated QSAR input dataset
│
├── output_files/
│   └── Y-randomization results, summary tables, and figures
│
└── README.md
```

## Objective

The objective of this analysis was to validate the final DPP-4 QSAR regression model using Y-randomization. In this procedure, the molecular fingerprints were kept unchanged, while the activity values were randomly shuffled. The model was then retrained and evaluated using the randomized labels.

The performance of the real model was compared with the performance distribution of randomized-label models.

## Analysis Summary

The Y-randomization test used the same curated DPP-4 dataset, molecular representation, train/test split logic, and cross-validation strategy as the main QSAR regression workflow.

The final tuned Random Forest model was used for the validation analysis. The real cross-validation performance was compared against multiple randomized-label runs.

A substantially higher real-model performance compared with randomized models supports that the QSAR model learned a meaningful structure–activity relationship rather than random noise.

## Directory Notes

Detailed notebook workflow and model settings are documented in:

```text
colab_script/README.md
```

Input dataset information is documented in:

```text
input_files/README.md
```

Generated Y-randomization output files are described in:

```text
output_files/README.md
```

