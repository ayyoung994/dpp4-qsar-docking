# Output Files

This directory contains the output files generated from the DPP-4 QSAR regression notebook.

## Baseline Model Comparison

```text
DPP4_Morgan_QSAR_model_comparison.csv
```

Contains the initial train/test comparison of baseline QSAR regression models.

Main information included:

```text
Model
Train_R2
Test_R2
R2_gap
Test_RMSE
Test_MAE
```

## Baseline Cross-Validation Results

```text
DPP4_Morgan_QSAR_baseline_CV_results.csv
```

Contains 5-fold cross-validation results for the baseline regression models.

Main information included:

```text
Model
Train_R2_mean
CV_R2_mean
CV_R2_std
Overfit_Gap
CV_MAE_mean
CV_MAE_std
CV_RMSE_mean
CV_RMSE_std
```

## Tuned Model Results

```text
DPP4_Morgan_QSAR_tuned_model_results.csv
```

Contains the performance summary of tuned models after hyperparameter optimization.

The tuned models include:

```text
Tuned Random Forest
Tuned HistGradient Boosting
Tuned XGBoost
```

The table includes cross-validation performance, independent test-set performance, prediction error metrics, and best hyperparameters.

## Final Model Selection and Reproducibility Files

```text
DPP4_QSAR_final_model_selection_reproducibility.csv
```

Contains the final model-selection table. The final model was selected based on the highest tuned cross-validation R².

```text
DPP4_QSAR_final_model_metadata.json
```

Contains reproducibility metadata for the final model, including:

```text
Final model name
Model-selection rule
Morgan fingerprint settings
Random seed
Best cross-validation R²
Independent test-set metrics
Best hyperparameters
```

```text
DPP4_QSAR_final_model.joblib
```

Saved final QSAR regression model object.

## Training-Set Cross-Validated Predictions

```text
DPP4_QSAR_final_model_training_CV_predictions.csv
```

Contains cross-validated predictions for the training set using the selected final model.

Main information included:

```text
Index
Experimental_pIC50
CV_Predicted_pIC50
Residual
```

## Independent Test-Set Prediction Files

```text
DPP4_QSAR_final_model_test_predictions_residuals.csv
```

Contains independent test-set predictions and residuals from the selected final model.

```text
DPP4_QSAR_final_test_predictions.csv
```

Contains the final independent test-set prediction table with compound information.

Main information included:

```text
molecule_chembl_id
parent_smiles
Experimental_pIC50
activity_class
Predicted_pIC50
Residual
Final_Model
```

## Diagnostic Figures

```text
DPP4_QSAR_final_model_predicted_vs_experimental_test_set.png
```

Predicted vs experimental pIC50 plot for the independent test set.

```text
DPP4_QSAR_final_model_residual_plot_test_set.png
```

Residual plot for the independent test set.

```text
DPP4_QSAR_predicted_vs_residual_testset.png
```

Combined diagnostic figure containing:

```text
A) Predicted vs experimental pIC50 plot
B) Residual plot
```

```text
DPP4_QSAR_predicted_vs_residual_testset_ver2.png
```

Updated combined diagnostic figure with improved layout and metric annotation.

## Notes

The final model was selected using cross-validation performance, not independent test-set ranking. The independent test set was used only for final evaluation and diagnostic visualization.

