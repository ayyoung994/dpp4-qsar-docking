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
├── Overall docking results.csv
│
└── README.md
```

## Overall Docking Result Table

```text
Overall docking results.csv
```

This file summarizes the docking results for the selected ligands. It includes the docking score or binding affinity values and relevant docking result information for each compound.

The table was used to compare the relative docking scores of selected compounds and reference ligands.

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
ChimeraX
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

## Notes

The docking outputs were used for qualitative structural interpretation of selected QSAR compounds. Docking scores and interaction diagrams were used as supportive evidence, not as the primary validation method for QSAR model performance.

Docking results should be interpreted carefully because predicted poses and scores can be affected by receptor preparation, ligand preparation, grid definition, and scoring-function limitations.

