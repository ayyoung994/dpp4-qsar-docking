# DPP-4 QSAR and Molecular Docking Project

This repository contains the computational workflow for a QSAR and molecular docking study of human dipeptidyl peptidase-4 (DPP-4) inhibitors.

## Project overview

Human DPP-4 inhibitor activity data were collected from the ChEMBL database using the target identifier CHEMBL284. The dataset was curated using strict IC50 filtering criteria, standardized by parent SMILES, converted to pIC50 values, and prepared for QSAR modeling.

The project includes data curation, chemical-space analysis, QSAR regression modeling, Y-randomization validation, representative compound selection, and molecular docking preparation using the human DPP-4 crystal structure 2RGU.

## Repository structure

```text
dpp4-qsar-docking/
│
├── README.md
│
├── 01_data_curation/
│   ├── README.md
│   ├── colab_scripts/
│   ├── input_files/
│   └── output_files/
│
├── 02_QSAR_Regression/
│   ├── README.md
│   ├── 01_QSAR_regression_analysis/
│   └── 02_Y-randomization/
│
├── 03_chemical_space_analysis/
│   ├── README.md
│   ├── colab_scripts/
│   ├── input_files/
│   └── output_files/
│
└── 04_Molecular_Docking/
    ├── README.md
    ├── receptor/
    ├── ligands/
    ├── docking_grid/
    ├── scripts/
    ├── results/
    └── figures/
```

## Workflow summary

### 1. Data curation

The `01_data_curation/` folder contains the workflow used to collect and curate human DPP-4 inhibitor IC50 records from ChEMBL.

This step includes strict IC50 filtering, duplicate removal, parent SMILES generation, inconsistent duplicate filtering, pIC50 conversion, and activity-class assignment.

The final QSAR-ready dataset generated from this step is used for downstream chemical-space analysis, QSAR modeling, and docking compound selection.

### 2. QSAR regression

The `02_QSAR_Regression/` folder contains the QSAR regression modeling and validation workflows.

This step includes Morgan fingerprint generation, regression model training, model comparison, cross-validation, test-set evaluation, and Y-randomization validation.

Y-randomization was performed to evaluate whether the QSAR model learned meaningful structure–activity relationships rather than chance correlations.

### 3. Chemical-space analysis

The `03_chemical_space_analysis/` folder contains the chemical-space visualization workflow.

This step includes PCA and t-SNE visualization of curated DPP-4 inhibitors using Morgan fingerprints. The analysis was used to inspect chemical diversity, visualize activity-class distribution, evaluate train/test chemical-space coverage, and select representative compounds for docking.

### 4. Molecular docking

The `04_Molecular_Docking/` folder contains the receptor preparation, ligand preparation, docking grid information, docking scripts, docking results, and docking figures.

The human DPP-4 crystal structure 2RGU was used as the receptor. The docking grid was centered on the co-crystallized ligand 356 / BI 1356 to cover the DPP-4 inhibitor-binding pocket.

## Main dataset

The final curated dataset used for downstream analysis is:

```text
DPP4_QSAR_dataset_parent_cleaned_locked.csv
```

This dataset contains cleaned human DPP-4 inhibitor records with valid parent SMILES, pIC50 values, and activity-class labels.

## Molecular representation

Compounds were represented using Morgan fingerprints.

```text
Fingerprint type: Morgan fingerprint
Radius: 2
Number of bits: 2048
Chirality: included
```

## Activity classes

Compounds were assigned into three activity classes based on pIC50 values:

```text
Low:      pIC50 < 6
Moderate: 6 ≤ pIC50 < 7
High:     pIC50 ≥ 7
```

## Docking receptor

The docking workflow used the human DPP-4 crystal structure:

```text
PDB ID: 2RGU
Protein: Human dipeptidyl peptidase-4
Reference ligand: 356 / BI 1356
```

The docking grid was centered on the co-crystallized ligand.

```text
center_x = 50.739
center_y = 48.590
center_z = 35.361

size_x = 28 Å
size_y = 28 Å
size_z = 28 Å
```

## Software and packages

The computational workflow used the following tools and Python packages:

```text
Python
Google Colab
pandas
numpy
RDKit
scikit-learn
matplotlib
PyMOL
AutoDock Vina / PyRx
```

## Notes

This repository is intended to document the computational workflow used for DPP-4 QSAR modeling and molecular docking. Intermediate files are retained to make the workflow transparent and reproducible.

The QSAR and docking results are intended to support structure–activity relationship interpretation and compound prioritization. Experimental validation is required before drawing biological conclusions.
