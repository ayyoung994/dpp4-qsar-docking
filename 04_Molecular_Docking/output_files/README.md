# Molecular Docking Output Files

This directory contains the output files generated from the molecular docking analysis of selected DPP-4 ligands using the 2RGU receptor structure.

## Folder Structure

```text
output_files/
│
├── 2D_interactions_of_each_ligand/
│   └── 2D protein–ligand interaction diagrams
│
├── docked_ligands/
│   └── Docked ligand pose files in SDF format
│
├── Docking_score_and_interaction_types.xlsx
├── Overall_docking_results.csv
└── README.md
```

## Overall Docking Result Table

```text
Overall_docking_results.csv
```

This file summarizes the overall docking results for the selected ligands. It includes docking score or binding affinity information for the reference ligand and selected compounds.

The table was used to compare the relative docking scores of the docked ligands.

## Docking Score and Interaction Type Summary

```text
Docking_score_and_interaction_types.xlsx
```

This spreadsheet summarizes the docking scores and key interaction information for each ligand.

The file includes the following information:

```text
Ligand
Activity group
Docking score
Key residues
Major interaction types
```

The ligands summarized in this file include:

```text
356 reference ligand
C1–C3 high-activity compounds
C4–C5 known DPP-4 inhibitors
C6–C7 moderate-activity compounds
C8–C9 low-activity compounds
```

This file was used to connect docking scores with qualitative protein–ligand interaction patterns.

## Docked Ligand Files

Docked ligand pose files are stored in:

```text
docked_ligands/
```

These files are provided in `.sdf` format and contain the predicted docked poses of the selected ligands in the DPP-4 binding pocket.

These structures can be opened using molecular visualization tools such as:

```text
PyMOL
Discovery Studio Visualizer
```

## 2D Interaction Diagrams

2D protein–ligand interaction diagrams are stored in:

```text
2D_interactions_of_each_ligand/
```

These figures summarize predicted interactions between each ligand and residues in the DPP-4 binding pocket.

The diagrams may include interactions such as:

```text
Hydrogen bonds
Hydrophobic contacts
π–π interactions
π–cation interactions
π–anion interactions
π–sigma interactions
Halogen interactions
Electrostatic contacts
Nearby binding-site residues
```

## Docking Search Space

The docking search space was defined around the DPP-4 ligand-binding pocket in the 2RGU receptor structure.

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

The final PyRx/Vina search-space values above were used for the docking runs. The PyMOL-based grid estimate was used only during preliminary binding-site inspection.

## Notes

The docking outputs were used for qualitative structural interpretation of selected QSAR compounds. Docking scores and interaction diagrams were used as supportive evidence, not as the primary validation method for QSAR model performance.

Docking results should be interpreted carefully because predicted poses and scores can be affected by receptor preparation, ligand preparation, grid definition, ligand protonation state, and scoring-function limitations.
