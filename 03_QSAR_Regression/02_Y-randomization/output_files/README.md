# Output Files

This folder contains the output files generated from the DPP-4 Y-randomization validation notebook.

## Purpose

The files in this folder document the Y-randomization validation results for the DPP-4 QSAR regression model.

These outputs were generated to assess whether the final QSAR model learned meaningful structure–activity relationships or whether its performance could be explained by chance correlation.

## Output files list

```text
DPP4_RF_tuned_Y_randomization_results.csv
DPP4_RF_tuned_Y_randomization_summary.csv
DPP4_Y_randomization_plot.png
```

## File descriptions

### 1. `DPP4_RF_tuned_Y_randomization_results.csv`

This file contains the performance results from each Y-randomization run.

In each run, the pIC50 values were randomly shuffled while the molecular descriptors were kept unchanged. The model was then rebuilt and evaluated using the same validation strategy as the real model.

This file is used to compare the distribution of randomized model performance against the real model performance.

### 2. `DPP4_RF_tuned_Y_randomization_summary.csv`

This file summarizes the Y-randomization validation results.

It includes the real model performance and the overall performance statistics of the randomized models, such as the mean, standard deviation, minimum, and maximum values of the randomized model metrics.

This summary file is useful for reporting whether the real model performed substantially better than the randomized models.

### 3. `DPP4_Y_randomization_plot.png`

This figure visualizes the Y-randomization results.

The plot compares the performance of randomized models with the real QSAR model. A clear separation between the real model and the randomized models supports the reliability of the QSAR regression workflow.

## Main final output

The main final output for interpretation is:

```text
DPP4_Y_randomization_plot.png
```

This figure can be used in the report to visually demonstrate that the real QSAR model outperformed models trained with randomized pIC50 values.

## Notes

The CSV files provide numerical evidence, while the PNG figure provides a visual summary of the Y-randomization validation.

These files should be interpreted together with the main QSAR regression results and cross-validation performance.
