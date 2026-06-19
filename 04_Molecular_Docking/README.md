# 04_Molecular_Docking

This directory contains the molecular docking workflow used to support structural interpretation of selected DPP-4 QSAR compounds. Docking was performed using the human DPP-4 crystal structure 2RGU and selected ligands from the curated DPP-4 QSAR dataset.

## Purpose

The purpose of this docking workflow was to examine the predicted binding poses and interaction patterns of selected DPP-4 ligands. The docking results were used as supportive structural evidence for interpreting selected high-, moderate-, and low-activity compounds, as well as reference or known DPP-4 inhibitors.

Docking was not used as the primary validation method for QSAR model performance.

## Directory Structure

```text
04_Molecular_Docking/
│
├── docking_grid/
│   └── Docking grid information and search-space settings
│
├── docking_selection/
│   └── Notebook, input files, and outputs for selecting docking candidates
│
├── ligands/
│   └── Prepared individual ligand SDF files used as docking inputs
│
├── output_files/
│   └── Docking scores, docked ligand poses, and 2D interaction diagrams
│
├── receptor/
│   └── DPP-4 receptor structure files and receptor preparation notes
│
├── scripts/
│   └── Supporting scripts used in the docking workflow
│
└── README.md
```

## Receptor

The receptor was prepared from the human DPP-4 crystal structure:

```text
PDB ID: 2RGU
Reference ligand: 356 / BI 1356
Protein: Human dipeptidyl peptidase-4
```

The co-crystallized ligand was used to inspect the DPP-4 inhibitor-binding pocket and guide docking grid placement.

Receptor files and preparation details are provided in:

```text
receptor/
```

## Docking Grid

The final docking search space used for AutoDock Vina docking was defined in PyRx.

```text
Vina search space center:
X = 50.7470
Y = 48.6659
Z = 30.5131

Search space dimensions:
X = 29.6791 Å
Y = 29.5164 Å
Z = 29.7007 Å
```

Docking grid details are provided in:

```text
docking_grid/
```

## Docking Candidate Selection

Representative ligands were selected from the curated DPP-4 QSAR dataset. The selected compounds included known DPP-4 inhibitors and representative compounds from high-, moderate-, and low-activity groups.

The docking-candidate selection workflow is documented in:

```text
docking_selection/
```

## Ligand Files

Prepared individual ligand structures are stored in:

```text
ligands/
```

These ligand files are provided in SDF format and were used as docking inputs.

## Docking Outputs

Docking results are stored in:

```text
output_files/
```

This directory includes:

```text
Docking score summary tables
Docked ligand SDF files
2D protein–ligand interaction diagrams
Interaction type summary files
```

## Notes

The docking analysis was used for qualitative structural interpretation. Docking scores and predicted interaction patterns should be interpreted carefully because they can be affected by receptor preparation, ligand preparation, docking grid definition, ligand protonation state, and scoring-function limitations.

The main QSAR model validation was performed separately in the QSAR regression and Y-randomization analysis directories.

