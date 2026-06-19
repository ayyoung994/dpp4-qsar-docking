# Output Files

This directory contains the output files generated from the DPP-4 Y-randomization analysis.

## Y-Randomization Results

```text
DPP4_RF_tuned_Y_randomization_results.csv
```

Contains the cross-validation results from each Y-randomization run.

Main information included:

```text
Randomization
Train_R2_mean
CV_R2_mean
CV_R2_std
CV_MAE_mean
CV_RMSE_mean
```

Each row represents one randomized-label model. The molecular fingerprints were kept unchanged, while the training-set activity values were shuffled.

## Y-Randomization Summary

```text
DPP4_RF_tuned_Y_randomization_summary.csv
```

Contains the summary comparison between the real model and the randomized models.

Main information included:

```text
Final_Model
Real_CV_R2
Real_CV_MAE
Real_CV_RMSE
Randomized_CV_R2_mean
Randomized_CV_R2_std
Randomized_CV_R2_max
Randomized_CV_R2_min
N_randomizations
```

This file is used to assess whether the real model performance is clearly higher than the performance obtained after randomizing the activity labels.

## Figure Output

```text
DPP4_Y_randomization_plot.png
```

Scatter plot showing the CV R² values from the Y-randomized models. The real model CV R² is shown as a reference line.

## Interpretation

The Y-randomization test was used as an internal validation step for the final QSAR regression model. If the real model shows substantially higher cross-validation performance than the randomized-label models, this supports that the model learned a meaningful relationship between molecular structure and DPP-4 inhibitory activity rather than random noise.

## Notes

The Y-randomization analysis was performed using the final tuned Random Forest model and the same cross-validation strategy used in the main QSAR regression workflow.

