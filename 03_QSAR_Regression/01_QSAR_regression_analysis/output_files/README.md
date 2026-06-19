# Output Files

This directory contains the output files generated from the DPP-4 QSAR regression analysis.

## Model Comparison Outputs

```text
DPP4_Morgan_QSAR_model_comparison.csv
```

Contains the baseline train/test model comparison results, including R², MAE, RMSE, and overfitting gap.

```text
DPP4_Morgan_QSAR_baseline_CV_results_chirality.csv
```

Contains the 5-fold cross-validation results for baseline QSAR regression models.

```text
DPP4_Morgan_QSAR_tuned_model_results_chirality.csv
```

Contains the performance summary of tuned models after hyperparameter optimization.

## Final Model Outputs

```text
DPP4_QSAR_final_model_selection_reproducibility_chirality.csv
```

Contains the final model-selection table, including cross-validation performance, independent test-set performance, and selected hyperparameters.

```text
DPP4_QSAR_final_model_metadata_chirality.json
```

Contains reproducibility metadata for the final model, including fingerprint settings, random seed, model-selection rule, final model name, test-set metrics, and best hyperparameters.

```text
DPP4_QSAR_final_model_chirality.joblib
```

Saved final QSAR regression model object.

## Prediction Outputs

```text
DPP4_QSAR_final_test_predictions_chirality.csv
```

Contains the independent test-set compounds with experimental pIC50 values, predicted pIC50 values, residuals, activity classes, and compound identifiers.

## Figure Outputs

```text
DPP4_QSAR_predicted_vs_residual_testset_chirality.png
```

Combined diagnostic figure showing:

```text
A) Predicted vs experimental pIC50 plot
B) Residual plot
```

## Notes

The final model was selected based on the highest tuned cross-validation R². The independent test set was used only for final evaluation and diagnostic plotting.

