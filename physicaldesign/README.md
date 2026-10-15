Physical Design (PD) — VLSI / OpenLANE Workshop
Overview
This repository contains the practical work, screenshots, and notes completed across all five modules of the Physical Design workshop. The workshop progresses from open-source EDA and the Sky130 PDK through floorplanning, standard-cell design and characterization, timing analysis, clock-tree synthesis, routing, and design-rule checking.

The module sequence follows the supplied workshop topic list and preserves the practical figures provided for each module. Each module has its own README.md and Images directory, with the supplied figures embedded directly in the corresponding README.

Modules Covered
Module 1 — Inception of Open-Source EDA, OpenLANE and Sky130 PDK
This module covers the foundations of open-source digital ASIC design, including QFN-48 package/chip terminology, RISC-V, the path from software applications to hardware, SoC design, OpenLANE, the simplified and detailed RTL2GDS flow, OpenLANE directory structure, design preparation, synthesis review, project Git information, and synthesis-result characterization.

Module 2 — Good Floorplan vs Bad Floorplan and Introduction to Library Cells
This module covers chip floorplanning considerations, utilization and aspect ratio, pre-placed cells, decoupling capacitors, power planning, pin placement, floorplan execution and inspection, library binding, placement optimization, RePlAce congestion-aware placement, cell design/characterization flow, and timing characterization parameters.

Module 3 — Design Library Cell Using Magic Layout and ngspice Characterization
This module covers CMOS inverter ngspice simulations, SPICE deck creation, switching threshold, static and dynamic simulation, CMOS fabrication/layout formation steps, Sky130 basic layers and LEF, standard-cell layout and SPICE extraction, Sky130 model-file characterization, Magic options and DRC rules, and practical DRC-rule exercises.

Module 4 — Pre-Layout Timing Analysis and Importance of Good Clock Tree
This module covers timing modelling using delay tables, grid-to-track and layout-to-LEF preparation, timing libraries, OpenSTA analysis with ideal clocks, setup time, jitter and uncertainty, synthesis optimization for setup violations, TritonCTS clock-tree synthesis, H-Tree buffering, crosstalk and clock shielding, and setup/hold analysis using real clocks.

Module 5 — Final Steps for RTL2GDS Using TritonRoute and OpenSTA
This module covers maze routing using Lee’s algorithm, DRC, power distribution network construction, power straps to standard-cell power, global and detail routing, TritonRoute configuration and features, route-guide handling, inter-guide connectivity, intra-/inter-layer routing, connectivity handling, routing topology, and post-route files.

Overall Workshop Flow
The five modules build a continuous physical-design workflow:

Open-Source EDA / Sky130 PDK
            ↓
       OpenLANE / RTL2GDS
            ↓
        Synthesis Review
            ↓
         Floorplanning
            ↓
 Library Binding & Placement
            ↓
 Standard-Cell Design / Characterization
            ↓
    Timing Modelling / OpenSTA
            ↓
 Clock Tree Synthesis / TritonCTS
            ↓
  Real-Clock Setup & Hold Analysis
            ↓
       Power Distribution
            ↓
      Global / Detail Routing
            ↓
       TritonRoute / DRC
            ↓
        Post-Route Files
This sequence reflects the topics supplied for the five workshop modules; the repository is organized to make the progression and practical evidence easy to follow.

Repository Structure
Physical_Design_PD/
├── README.md
├── Module 1/
│   ├── Images/
│   │   └── <7 supplied practical figures>
│   └── README.md
│
├── Module 2/
│   ├── Images/
│   │   └── <10 supplied practical figures>
│   └── README.md
│
├── Module 3/
│   ├── Images/
│   │   └── <27 supplied practical figures>
│   └── README.md
│
├── Module 4/
│   ├── Images/
│   │   └── <27 supplied practical figures>
│   └── README.md
│
├── Module 5/
│   ├── Images/
│   │   └── <8 supplied practical figures>
│   └── README.md
Tools and Technologies Referenced
OpenLANE / OpenLane — RTL-to-GDS implementation flow
Sky130 PDK — technology files and models used in the workshop
Magic — layout viewing, extraction, and DRC-related work
ngspice — SPICE simulation and inverter characterization
OpenSTA — static timing analysis
TritonCTS — clock-tree synthesis
TritonRoute — routing
RePlAce — congestion-aware placement
Linux / Ubuntu — workshop environment
Overall Learning Outcomes
After completing the five modules, the practical work provides exposure to:

Open-source EDA and the role of a PDK in digital ASIC implementation.
The OpenLANE RTL-to-GDS flow and its major stages.
Design preparation and synthesis-result review.
Chip floorplanning, utilization, aspect ratio, power planning, and pin placement.
Library binding, standard-cell placement, placement optimization, and congestion awareness.
CMOS inverter SPICE simulation and standard-cell layout/extraction.
Sky130 layout layers, technology files, and DRC-rule handling.
Timing libraries, delay tables, setup/hold analysis, jitter, and uncertainty.
Clock-tree synthesis, buffering, H-Tree concepts, crosstalk, and shielding.
Power distribution, global/detail routing, TritonRoute features, connectivity, DRC, and post-route outputs.

Practical Evidence
Every supplied figure is retained in its module's Images directory and embedded in that module's README. This makes each module README function as both a topic summary and an image-based record of the practical work.
