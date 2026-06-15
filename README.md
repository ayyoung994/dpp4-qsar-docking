# DPP-4 QSAR and Molecular Docking Project

This repository contains the computational workflow for a QSAR and molecular docking study of human dipeptidyl peptidase-4 (DPP-4) inhibitors.

## Project overview

Human DPP-4 inhibitor activity data were collected from ChEMBL using the target identifier CHEMBL284. The dataset was curated using strict IC50 filtering criteria, converted to pIC50 values, and prepared for QSAR modeling.

The project includes:

- DPP-4 inhibitor dataset curation
- Chemical space analysis
- QSAR regression modeling
- Activity-based compound classification
- Selection of representative compounds for docking
- Molecular docking preparation and analysis

## Repository structure

```text
data/
  raw/
  processed/

notebooks/
  01_data_curation.ipynb
  02_chemical_space_analysis.ipynb
  03_qsar_regression_models.ipynb
  04_docking_preparation.ipynb

results/
  figures/
  tables/
  model_outputs/

docking/
  protein/
  ligands/
  vina_outputs/
