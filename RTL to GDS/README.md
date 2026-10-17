# VLSI Design and Synthesis Lab Work

## Repository Structure

```text
lab work RLC_GLS_DAC/
│
├── README.md
│
└── screenshots/
    ├── BabySoC Synthesis Statistics.jpeg
    ├── Baby_soc synthesized design.jpeg
    ├── Baby_Soc_simulation _soc2_netlist.jpeg
    ├── Baby_Soc_simulation _soc_netlist.jpeg
    ├── checking the gate.jpeg
    ├── Comparion post_pre.jpeg
    ├── comparison of goodmux & badmux.jpeg
    ├── Design hierarchy.jpeg
    ├── File_structures.jpeg
    ├── final Practical Flow.jpeg
    ├── GLS pre_synth.jpeg
    ├── Good_mux technology mapped .jpeg
    ├── Good_mux.jpeg
    ├── good_mux_simulation.jpeg
    ├── Lekeage power information.jpeg
    ├── mux_code.jpeg
    ├── post_synthesis.jpeg
    ├── rv_myth.jpeg
    ├── test_bench file.jpeg
    ├── vsdbaby_soc.jpeg
    ├── sequence_detector_rtl.png
    ├── sequence_detector_stat.png
    ├── sequence_detector_synthesis.png
    └── sequence_detector_gls.png
```

All laboratory screenshots are kept inside the `screenshots/` folder so that the repository remains organized and the README can use clean relative paths.

---

# About This Repository

This repository contains the VLSI Design and Synthesis laboratory work completed during the workshop. The work covers RTL design, Verilog coding, functional simulation, waveform analysis, Yosys synthesis, technology mapping, gate-level simulation, hierarchical design, standard-cell library analysis, and the VSD BabySoC synthesis and verification flow.

The laboratory work was carried out using:

- Verilog HDL
- GVim / VI
- Icarus Verilog
- GTKWave
- Yosys
- SKY130 Standard-Cell Library
- Linux Terminal
- VSD BabySoC Environment

---

# Complete VLSI Design Flow

The overall flow followed during the laboratory work was:

```text
RTL Design
    ↓
Verilog Coding
    ↓
Testbench
    ↓
RTL / Functional Simulation
    ↓
Icarus Verilog
    ↓
VCD Generation
    ↓
GTKWave
    ↓
Yosys Synthesis
    ↓
Logic Optimization
    ↓
Technology Mapping
    ↓
Gate-Level Netlist
    ↓
Gate-Level Simulation
    ↓
GTKWave Verification
```

### Practical Flow

![Final Practical Flow](screenshots/final%20Practical%20Flow.jpeg)

---

# Tools Used

| Tool | Purpose |
| --- | --- |
| GVim / VI | Verilog source-code creation and editing |
| Verilog HDL | RTL hardware description |
| Icarus Verilog | RTL and gate-level simulation |
| GTKWave | Waveform visualization |
| Yosys | RTL synthesis and optimization |
| SKY130 Library | Standard-cell technology mapping |
| Linux Terminal | Command-line design flow |
| VSD BabySoC | SoC-level synthesis and verification |

---

# RTL Design, Simulation and Synthesis

## 1. VLSI Design Flow

The laboratory began with understanding the complete RTL-to-gate-level design flow, including design entry, simulation, synthesis, optimization, technology mapping, and gate-level verification.

![VLSI Design Flow](screenshots/final%20Practical%20Flow.jpeg)

---

## 2. Project File Structure

The project file structure was examined to understand the organization of the laboratory files and design resources.

![Project File Structure](screenshots/File_structures.jpeg)

---

## 3. Design Hierarchy

Hierarchical RTL design was studied to understand how a larger hardware design can be constructed using multiple interconnected modules.

```text
Top Module
    ↓
Sub-Module(s)
    ↓
Intermediate Signals
    ↓
Output
```

![Design Hierarchy](screenshots/Design%20hierarchy.jpeg)

---

# MUX Design, Simulation and Synthesis

## 4. MUX RTL Code

A multiplexer was implemented using Verilog HDL. The RTL source code was examined before simulation and synthesis.

![MUX RTL Code](screenshots/mux_code.jpeg)

---

## 5. Good MUX Functional Simulation

The Good MUX was simulated to verify its functional behavior. The simulation waveform was observed using GTKWave.

![Good MUX Simulation](screenshots/good_mux_simulation.jpeg)

---

## 6. Good MUX Synthesis

The Good MUX RTL was synthesized using Yosys. The synthesized circuit was inspected to understand the hardware generated from the RTL description.

![Good MUX Synthesis](screenshots/Good_mux.jpeg)

---

## 7. Good MUX Technology Mapping

After synthesis, the Good MUX was technology mapped using the SKY130 standard-cell library.

![Good MUX Technology Mapping](screenshots/Good_mux%20technology%20mapped%20.jpeg)

---

## 8. Good MUX Post-Synthesis Simulation

The synthesized MUX implementation was used for post-synthesis verification. The resulting waveform was examined to verify the synthesized design behavior.

![Good MUX Post-Synthesis Simulation](screenshots/post_synthesis.jpeg)

---

## 9. Good MUX vs Bad MUX

Good and Bad MUX implementations were compared to understand the effect of RTL coding style on simulation and synthesized hardware behavior.

![Good MUX vs Bad MUX](screenshots/comparison%20of%20goodmux%20%26%20badmux.jpeg)

---

# Gate-Level Simulation

## 10. Gate-Level Simulation Flow

The general gate-level simulation flow followed during the laboratory was:

```text
RTL
 ↓
Synthesis
 ↓
Technology Mapping
 ↓
Gate-Level Netlist
 ↓
Standard-Cell Models
 ↓
Testbench
 ↓
Icarus Verilog
 ↓
VCD
 ↓
GTKWave
```

![GLS Pre-Synthesis](screenshots/GLS%20pre_synth.jpeg)

---

## 11. Checking the Synthesized Gate

The synthesized gate-level implementation was inspected as part of the verification process.

![Checking the Gate](screenshots/checking%20the%20gate.jpeg)

---

# Standard-Cell Library Analysis

## 12. Leakage Power Information

Leakage-power information available from the standard-cell library was studied as part of understanding library-based cell characteristics.

![Leakage Power Information](screenshots/Lekeage%20power%20information.jpeg)

---

# VSD BabySoC

## 13. VSD BabySoC

The VSD BabySoC environment was studied to apply the RTL-to-synthesis flow to a larger practical System-on-Chip design.

![VSD BabySoC](screenshots/vsdbaby_soc.jpeg)

---

## 14. RVMYTH Module

The RVMYTH module within the BabySoC design was inspected as part of understanding the SoC hierarchy and RTL implementation.

![RVMYTH Module](screenshots/rv_myth.jpeg)

---

## 15. BabySoC Testbench

The BabySoC testbench was examined for simulation and verification of the SoC design.

![BabySoC Testbench](screenshots/test_bench%20file.jpeg)

---

## 16. BabySoC Synthesized Design

The BabySoC design was synthesized using Yosys. The synthesized hardware representation was inspected to understand the resulting design structure.

![BabySoC Synthesized Design](screenshots/Baby_soc%20synthesized%20design.jpeg)

---

## 17. BabySoC Synthesis Statistics

Yosys synthesis statistics were examined to understand the resulting hardware and synthesized design components.

![BabySoC Synthesis Statistics](screenshots/BabySoC%20Synthesis%20Statistics.jpeg)

---

## 18. BabySoC Netlist

The generated BabySoC gate-level netlist was inspected as part of the synthesis flow.

![BabySoC Netlist](screenshots/Baby_Soc_simulation%20_soc_netlist.jpeg)

### Additional BabySoC Netlist View

![BabySoC Netlist 2](screenshots/Baby_Soc_simulation%20_soc2_netlist.jpeg)

---

## 19. BabySoC Simulation

The BabySoC simulation environment was examined using the RTL, testbench, simulation tools, and waveform viewer.

```text
BabySoC RTL
     ↓
Testbench
     ↓
Icarus Verilog
     ↓
Simulation
     ↓
VCD
     ↓
GTKWave
```

---

## 20. Pre-Synthesis and Post-Synthesis Comparison

The pre-synthesis and post-synthesis results were compared to understand the relationship between the original RTL implementation and its synthesized gate-level implementation.

![Pre-Synthesis and Post-Synthesis Comparison](screenshots/Comparion%20post_pre.jpeg)

---

# Practical VLSI Flow Summary

The complete practical flow covered during the laboratory work can be summarized as:

```text
Verilog RTL
     ↓
GVim / VI
     ↓
Testbench
     ↓
Icarus Verilog
     ↓
Functional Simulation
     ↓
GTKWave
     ↓
Yosys
     ↓
RTL Synthesis
     ↓
Logic Optimization
     ↓
Technology Mapping
     ↓
SKY130 Standard Cells
     ↓
Gate-Level Netlist
     ↓
Gate-Level Simulation
     ↓
GTKWave Verification
     ↓
VSD BabySoC
     ↓
Pre-Synthesis Simulation
     ↓
Synthesis
     ↓
Post-Synthesis Simulation
     ↓
Pre/Post-Synthesis Comparison
```

![Final Practical Flow](screenshots/final%20Practical%20Flow.jpeg)

---

# Key Concepts Covered

The laboratory work provided practical exposure to:

- RTL design using Verilog HDL
- Testbench development
- Functional / RTL simulation
- VCD generation
- GTKWave waveform analysis
- Yosys-based RTL synthesis
- Logic optimization
- Technology mapping
- SKY130 standard-cell libraries
- Gate-level netlists
- Gate-level simulation
- Hierarchical RTL design
- MUX implementation
- Good MUX and Bad MUX comparison
- Standard-cell leakage-power information
- VSD BabySoC hierarchy
- RVMYTH module inspection
- BabySoC testbench analysis
- BabySoC synthesis
- BabySoC netlist inspection
- Synthesis statistics
- Pre-synthesis and post-synthesis comparison
- Sequence detector FSM design
- RTL sequence-detector verification
- SKY130 technology mapping of the sequence detector
- Gate-level simulation of the mapped sequence detector
- RTL vs GLS functional comparison

---

# Important Yosys Commands

```bash
yosys
```

```bash
read_verilog <file.v>
```

```bash
read_liberty -lib <library.lib>
```

```bash
synth -top <top_module>
```

```bash
dfflibmap -liberty <library.lib>
```

```bash
abc -liberty <library.lib>
```

```bash
opt
```

```bash
show
```

```bash
flatten
```

```bash
setundef -zero
```

```bash
clean -purge
```

```bash
rename -enumerate
```

```bash
stat
```

```bash
write_verilog -noattr <netlist.v>
```

---


---


# Final Assessment – Sequence Detector

The final assessment extends the laboratory RTL-to-GLS flow to a serial sequence detector. The implementation was designed, simulated, synthesized, technology mapped using the SKY130 standard-cell library, and verified again at gate level.

## Target Sequence

```text
1111100
```

The detector uses a finite-state-machine (FSM) to track the incoming serial data. When the complete target sequence is recognized, the registered output `detected` produces a detection pulse.

### Main Signals

| Signal | Description |
| --- | --- |
| `clk` | Clock input |
| `reset` | Synchronous reset |
| `din` | Serial input data |
| `detected` | Sequence detection output |
| `detection_count` | Number of detected sequences |
| `state` | Internal FSM state |

---

## 21. Sequence Detector RTL Design

The RTL implementation contains seven logical FSM states corresponding to the progress of matching the target sequence `1111100`.

```text
Start
  ↓
1
  ↓
11
  ↓
111
  ↓
1111
  ↓
11111
  ↓
111110
  ↓
1111100
  ↓
Detection
```

Three bits are sufficient to encode seven logical states because:

```text
2³ = 8
```

The input `din` affects the combinational next-state logic, while the registered `state` changes on the active clock edge.

---

## 22. RTL Simulation

The sequence detector was simulated using Icarus Verilog and the generated waveform was inspected using GTKWave.

![Sequence Detector RTL Waveform](screenshots/sequence_detector_rtl.png)

### RTL Result

The provided testbench produces five sequence-detection events.

```text
Expected detections = 5
Actual RTL detections = 5
Difference = 0
```

The waveform shows five `detected` pulses and the `detection_count` reaching 5.

---

## 23. Synthesis and SKY130 Technology Mapping

The verified RTL was synthesized using Yosys and technology mapped using the SKY130 standard-cell library.

### Final Mapped Statistics

```text
Number of cells = 19
```

| Cell | Count |
| --- | ---: |
| `sky130_fd_sc_hd__a21oi_1` | 1 |
| `sky130_fd_sc_hd__and2_0` | 3 |
| `sky130_fd_sc_hd__and3b_1` | 2 |
| `sky130_fd_sc_hd__dfxtp_1` | 8 |
| `sky130_fd_sc_hd__nor2_1` | 1 |
| `sky130_fd_sc_hd__nor3_1` | 1 |
| `sky130_fd_sc_hd__nor4_1` | 1 |
| `sky130_fd_sc_hd__o21a_1` | 2 |
| **Total** | **19** |

Therefore:

```text
Sequential cells    = 8
Combinational cells = 11
Total mapped cells  = 19
```

### Yosys Statistics

![Sequence Detector Synthesis Statistics](screenshots/sequence_detector_stat.png)

### Technology-Mapped Statistics

![Sequence Detector Final Technology Mapping](screenshots/sequence_detector_synthesis.png)

### Intermediate Technology-Mapping Evidence

![Sequence Detector Intermediate Mapping](screenshots/sequence_detector_intermediate_mapping.png)

A representative mapped state-storage cell observed in the synthesized netlist is:

```text
Instance : sky130_fd_sc_hd__dfxtp_1_51
Cell     : sky130_fd_sc_hd__dfxtp_1
Signal   : state[0]
```

The final mapped implementation contains eight `sky130_fd_sc_hd__dfxtp_1` cells: seven for the FSM state storage and one for the registered `detected` output.

---

## 24. Gate-Level Simulation (GLS)

The technology-mapped netlist was verified using the SKY130 Verilog standard-cell models together with the same testbench.

```text
Mapped Gate-Level Netlist
          +
SKY130 Verilog Models
          +
Testbench
          ↓
Icarus Verilog
          ↓
VCD
          ↓
GTKWave
```

### GLS Waveform

![Sequence Detector GLS Waveform](screenshots/sequence_detector_gls.png)

### GLS Result

The final GLS waveform shows five detection events and the detection counter reaches 5.

```text
RTL detections = 5
GLS detections = 5
Functional difference = 0
```

The GLS waveform preserves the same logical detection behavior as the RTL simulation. Small timing shifts can occur because the GLS represents the technology-mapped standard-cell implementation.

### GLS Terminal / Verification Evidence

![GLS Verification Evidence](screenshots/sequence_detector_test_terminal_01.png)

---

# Assessment Questions – Verified Answers

## Q11 – Number of Detection Pulses

```text
5
```

## Q12 – Predicted vs Actual Detections

```text
Predicted = 5
Actual    = 5
Difference = 0
```

## Q13 – Effect of `din`

`din` affects the combinational next-state logic. The registered FSM `state` changes only at the active clock edge.

## Q14 – Synthesis

The sequence detector was successfully synthesized using Yosys.

## Q15 – Sequential Cells

```text
8
```

## Q16 – Combinational Cells

```text
11
```

## Q17 – Total Mapped Cells

```text
19
```

## Q18 – Example Mapped State Cell

```text
Instance : sky130_fd_sc_hd__dfxtp_1_51
Cell     : sky130_fd_sc_hd__dfxtp_1
Signal   : state[0]
```

![Mapped Flip-Flop Evidence](screenshots/sequence_detector_dff_instances.png)

## Q19 – State Encoding

Seven logical FSM states can be represented with three bits because `2³ = 8`. The final mapped implementation uses seven state-storage flip-flops plus one registered `detected` output due to the synthesis/mapping representation.

## Q20 – Synthesis Statistics

```text
Total mapped cells  = 19
Sequential cells    = 8
Combinational cells = 11
```

## Q21 – Post-Synthesis / Technology-Mapped Evidence

The final technology-mapped statistics and mapped netlist evidence are included above and in the `screenshots/` folder.

![Mapped Netlist](screenshots/sequence_detector_mapped_netlist.png)

## Q22 – First GLS Detection

The first GLS detection occurs shortly after 1 µs in the provided waveform. The exact timestamp should be read using the GTKWave cursor if a precise value is required.

## Q23 – RTL vs GLS

Both simulations produce five detection events:

```text
RTL = 5
GLS = 5
```

Therefore, the functional behavior is preserved after synthesis and technology mapping.

## Q24 – Timing Difference

RTL simulation represents the ideal functional RTL behavior, whereas GLS represents the technology-mapped standard-cell implementation. Consequently, GLS can show small gate-level propagation-delay effects and timing shifts that are not represented in an ideal RTL simulation.

## Q25 – Final Conclusion

The synthesized and technology-mapped sequence detector preserves the functional behavior verified at RTL. Both RTL and GLS produce five detection events and the detection counter reaches 5, confirming functional agreement.

---

# Sequence Detector Commands

### RTL Simulation

```bash
iverilog -o rtl.out ../tb/tb.v sequence_detector.v
vvp rtl.out
```

### SKY130 Technology Mapping

```bash
read_liberty -lib <sky130_library.lib>
dfflibmap -liberty <sky130_library.lib>
abc -liberty <sky130_library.lib>
stat
write_verilog sequence_detector_mapped.v
```

### Gate-Level Simulation

```bash
iverilog -g2012 -o gls.out ../tb/tb.v sequence_detector_mapped.v <sky130_standard_cell_model.v>
vvp gls.out
gtkwave dump.vcd
```

---

# Final Assessment Flow

```text
Sequence Detector RTL
        ↓
RTL Testbench
        ↓
Icarus Verilog
        ↓
RTL Waveform
        ↓
Yosys Synthesis
        ↓
SKY130 Technology Mapping
        ↓
19-Cell Mapped Netlist
        ↓
SKY130 Verilog Models
        ↓
Gate-Level Simulation
        ↓
GLS Waveform
        ↓
5 Detection Events
        ↓
RTL / GLS Functional Verification
        ↓
Assessment Completed
```


# Conclusion

The VLSI Design and Synthesis laboratory provided practical exposure to the RTL-to-gate-level design and verification flow.

The work covered Verilog RTL coding, testbench-based simulation, GTKWave waveform analysis, Yosys synthesis, logic optimization, technology mapping, SKY130 standard-cell usage, gate-level netlist inspection, and gate-level verification.

The MUX experiments demonstrated the relationship between RTL coding and synthesized hardware, while the Good MUX and Bad MUX comparison highlighted the importance of correct RTL implementation.

The laboratory was further extended to hierarchical design and the VSD BabySoC environment, including RVMYTH inspection, testbench analysis, synthesis, synthesis statistics, netlist inspection, and pre-synthesis/post-synthesis comparison. The final assessment extended the same RTL-to-GLS flow to a sequence detector for the target sequence `1100000`, including RTL verification, SKY130 technology mapping, and gate-level verification.

Overall, the practical work demonstrated the progression:

```text
RTL DESIGN
    ↓
FUNCTIONAL SIMULATION
    ↓
GTKWAVE
    ↓
YOSYS SYNTHESIS
    ↓
OPTIMIZATION
    ↓
TECHNOLOGY MAPPING
    ↓
GATE-LEVEL NETLIST
    ↓
GLS
    ↓
WAVEFORM VERIFICATION
    ↓
VSD BABYSOC
    ↓
PRE-SYNTHESIS SIMULATION
    ↓
POST-SYNTHESIS SIMULATION
    ↓
DESIGN VERIFICATION
```

---

## Author

**Name:** Bardawal Sangathram  
**Department:** Electronics and Communication Engineering (ECE)  
**Institution:** Anurag University
