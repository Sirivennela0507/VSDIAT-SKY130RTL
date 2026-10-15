# All-Corner Post-Route STA Analysis

## Overview

This package contains post-route static timing analysis (STA) results
for 16 process-voltage-temperature (PVT) corners.

The analysis uses the routed database, timing constraints, extracted
parasitics, and corner-specific standard-cell Liberty libraries.

## Package contents

- `corner_summary.csv` — measured setup and hold timing metrics.
- `corners/` — detailed setup, hold, and unconstrained path reports
  for each corner, plus per-corner diagnostic logs where available.
- `graphs/` — setup WNS, setup TNS, hold WNS, and hold TNS plots.
- `logs/` — shared analysis logs and the all-corner Tcl script.
- `STA_All_Corners_Report.pdf` — summary report with graphs and findings.

## Results summary

- Corners analyzed: 16
- Corners with negative setup WNS: 6
- Corners with negative hold WNS: 0
- Worst setup WNS: -30.7252 ns
  (`ss_n40C_1v28`)
- Best setup WNS: 8.0138 ns
  (`ff_100C_1v95`)
- Worst hold WNS: 0.1916 ns
  (`ff_n40C_1v95`)

## Interpretation

A negative setup WNS indicates a setup timing violation under the
constraints used for this analysis. A negative hold WNS indicates a
hold timing violation. The corner-specific detailed reports should be
consulted when investigating violations.

TNS is reported by OpenROAD for each corner. Zero TNS does not, by
itself, guarantee that WNS is non-negative; a small number of violating
paths can coexist with a rounded or nonzero worst-slack result.

These measurements apply to the loaded design, timing constraints,
libraries, and extracted parasitics used for this run. They should not
be interpreted as silicon sign-off without reviewing constraints,
clocks, exceptions, libraries, and the complete implementation flow.

## Reproduction

The main all-corner script is in `logs/vsdbabysoc_all_corners_fixed.tcl`.
It expects the `DESIGN`, `LIBDIR`, and `OUT` environment variables to be
set to the relevant routed-design, Liberty-library, and output paths.

Per-corner metric logs and scripts are included where available.
