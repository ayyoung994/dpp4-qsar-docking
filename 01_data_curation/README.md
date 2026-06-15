# 01_Data_Curation

This folder contains the data curation workflow used to prepare a QSAR-ready dataset of human DPP-4 inhibitors.

## Purpose

The purpose of this step is to collect, clean, filter, and standardize human DPP-4 inhibitor bioactivity data from ChEMBL. The curated dataset is then used for chemical space analysis, QSAR modeling, and docking compound selection.

## Data source

Bioactivity data were collected from the ChEMBL database using the human DPP-4 target identifier:

- Target: Human dipeptidyl peptidase-4
- ChEMBL target ID: CHEMBL284
- Activity type: IC50
- Unit: nM

## Folder structure

```text
01_data_curation/
├── README.md
├── colab_scripts/
└── outputs/
