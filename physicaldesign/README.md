# RTL Design & Synthesis Workshop

A structured collection of my work, experiments, simulations, synthesis results, and learning outcomes from the **RTL Design & Synthesis Workshop**.

This repository documents the complete learning path across **Modules 1–5**, starting from RTL design and simulation and progressing through synthesis, optimization, Gate-Level Simulation (GLS), coding styles, and synthesis optimization.

---

## 📚 Workshop Modules

| Module | Topic | Main Focus |
|---|---|---|
| **Module 1** | Introduction to RTL Design & Simulation | RTL coding, testbench, Icarus Verilog, VCD and GTKWave |
| **Module 2** | Sequential Logic & RTL Synthesis | Yosys, `.lib`, sequential circuits, synthesis and standard-cell mapping |
| **Module 3** | Combinational & Sequential Optimization | RTL optimization techniques for combinational and sequential logic |
| **Module 4** | GLS, Blocking vs Non-Blocking & Synthesis Simulation | Gate-Level Simulation, coding styles and comparison of RTL vs synthesized behavior |
| **Module 5** | Optimization in Synthesis | Synthesis-driven optimization and understanding how RTL coding affects hardware |

---

# 📁 Repository Structure

```text
RTL-Design-Workshop/
│
├── README.md
│
├── Module 1/
│   ├── README.md
│   ├── images/
│   └── ...
│
├── Module 2/
│   ├── README.md
│   ├── images/
│   └── ...
│
├── Module 3/
│   ├── README.md
│   ├── images/
│   └── ...
│
├── Module 4/
│   ├── README.md
│   ├── images/
│   └── ...
│
└── Module 5/
    ├── README.md
    ├── images/
    └── ...
```

Each module has its own `README.md` containing the concepts, experiments, observations, results, and supporting figures.

---

# 🔹 Module 1 — Introduction to RTL Design & Simulation

Module 1 establishes the basic RTL design and verification flow.

### Topics Covered

- RTL design using Verilog
- 2:1 multiplexer (`good_mux`) design
- Testbench creation
- Icarus Verilog simulation
- VCD generation
- GTKWave waveform analysis
- Basic RTL-to-hardware understanding
- Introduction to synthesis representation

### Design Flow

```text
RTL Design
    ↓
Testbench
    ↓
Icarus Verilog
    ↓
VCD Generation
    ↓
GTKWave
    ↓
Waveform Analysis
```

### Practical Work

The module documents the complete `good_mux` experiment, including the RTL, testbench, simulation flow, waveform and synthesized representation.

👉 **[Open Module 1 README](Module%201/README.md)**

---

# 🔹 Module 2 — Sequential Logic & RTL Synthesis

Module 2 moves from basic RTL simulation toward synthesis and sequential hardware structures.

### Topics Covered

- RTL-to-netlist synthesis
- Yosys synthesis flow
- Standard-cell `.lib` files
- Combinational and sequential logic synthesis
- D flip-flop structures
- Asynchronous set and reset
- Synthesis-generated cell structures
- Simulation waveforms
- Hierarchical RTL design
- Multiplier synthesis

### Synthesis Flow

```text
RTL Design
     +
Standard Cell Library (.lib)
     ↓
   Yosys
     ↓
Synthesized Netlist
     ↓
Standard-Cell Representation
```

### Practical Work

The module includes synthesis illustrations, standard-cell library concepts, flip-flop synthesis results, waveform observations, hierarchical design examples and multiplier synthesis.

👉 **[Open Module 2 README](Module%202/README.md)**

---

# 🔹 Module 3 — Combinational & Sequential Optimization

Module 3 focuses on understanding how RTL coding choices influence the resulting hardware and how combinational and sequential logic can be optimized.

### Topics Covered

- Combinational logic optimization
- Sequential logic optimization
- RTL-level optimization
- Removing redundant logic
- Simplifying logic structures
- Understanding hardware inferred from RTL
- Comparing different RTL implementations
- Observing the effect of optimization on synthesized hardware

### Optimization Perspective

```text
RTL Description
      ↓
Logic Inference
      ↓
Optimization
      ↓
Synthesized Hardware
```

The module documents the optimization exercises and supporting synthesis/visual results.

👉 **[Open Module 3 README](Module%203/README.md)**

---

# 🔹 Module 4 — GLS, Blocking vs Non-Blocking & Synthesis Simulation

Module 4 focuses on the relationship between RTL simulation and synthesized gate-level behavior.

### Topics Covered

- Gate-Level Simulation (GLS)
- RTL simulation vs Gate-Level Simulation
- Synthesis simulation
- Blocking assignments
- Non-blocking assignments
- Sequential coding styles
- Simulation behavior of different coding styles
- Understanding synthesized netlists
- Verifying synthesized designs using simulation

### Simulation Flow

```text
RTL
 ↓
RTL Simulation
 ↓
Synthesis
 ↓
Gate-Level Netlist
 ↓
Gate-Level Simulation
 ↓
Waveform Comparison
```

### Key Learning

This module helps demonstrate why coding style matters, particularly when describing sequential logic using blocking (`=`) and non-blocking (`<=`) assignments.

👉 **[Open Module 4 README](Module%204/README.md)**

---

# 🔹 Module 5 — Optimization in Synthesis

Module 5 focuses on optimization performed during the synthesis process and on understanding how synthesis transforms RTL into efficient hardware.

### Topics Covered

- Synthesis optimization
- RTL-to-netlist transformation
- Logic simplification
- Constant propagation
- Removal of redundant logic
- Hardware-efficient RTL coding
- Optimization of combinational structures
- Optimization of sequential structures
- Understanding synthesis results
- Comparing RTL intent with synthesized implementation

### Synthesis Optimization Flow

```text
RTL
 ↓
Elaboration
 ↓
Logic Optimization
 ↓
Technology Mapping
 ↓
Optimized Netlist
```

The module documents the synthesis experiments and observations used to understand how optimization affects the final hardware implementation.

👉 **[Open Module 5 README](Module%205/README.md)**

---

# 🛠️ Tools Used

The workshop work is based around commonly used RTL design and synthesis tools, including:

- **Verilog HDL** — RTL design
- **Icarus Verilog** — RTL simulation
- **GTKWave** — waveform visualization
- **Yosys** — RTL synthesis
- **Standard-cell `.lib` files** — technology/library information
- **Gate-level netlists** — synthesis and GLS analysis

---

# 🔄 Complete Workshop Flow

The five modules together build a progressive RTL-to-synthesis learning flow:

```text
                  RTL Design
                      │
                      ▼
             Module 1: RTL
              & Simulation
                      │
                      ▼
          Module 2: Synthesis
         & Sequential Hardware
                      │
                      ▼
       Module 3: RTL Optimization
        Combinational / Sequential
                      │
                      ▼
       Module 4: GLS & Coding Styles
        Blocking / Non-Blocking /
             Synthesis Simulation
                      │
                      ▼
       Module 5: Synthesis Optimization
                      │
                      ▼
              Optimized Netlist
```

---

# 📊 Learning Progression

| Stage | What I Learned |
|---|---|
| **1. RTL Design** | How to describe digital hardware using Verilog |
| **2. Simulation** | How to verify RTL functionality using testbenches and waveforms |
| **3. Synthesis** | How RTL is converted into a hardware netlist |
| **4. Sequential Logic** | How flip-flops and control signals are represented in hardware |
| **5. RTL Optimization** | How coding and logic structure affect synthesized hardware |
| **6. GLS** | How synthesized gate-level designs can be simulated and verified |
| **7. Synthesis Optimization** | How synthesis tools optimize and map RTL into hardware |

---

# 🎯 Overall Objectives

Through these five modules, the workshop develops an understanding of the complete RTL design and synthesis process:

- Design digital logic using Verilog RTL.
- Build and use testbenches.
- Simulate RTL designs.
- Analyze waveforms using GTKWave.
- Understand standard-cell libraries.
- Synthesize RTL using Yosys.
- Study combinational and sequential hardware structures.
- Optimize RTL implementations.
- Understand blocking and non-blocking assignments.
- Perform and analyze Gate-Level Simulation.
- Understand synthesis-driven optimization.
- Relate RTL code to the final synthesized hardware.

---

# 📌 Module Documentation

For detailed experiments, figures, synthesis results, waveforms and observations, refer to the individual module README files:

- **[Module 1 — RTL Design & Simulation](Module%201/README.md)**
- **[Module 2 — Sequential Logic & RTL Synthesis](Module%202/README.md)**
- **[Module 3 — Combinational & Sequential Optimization](Module%203/README.md)**
- **[Module 4 — GLS, Blocking vs Non-Blocking & Synthesis Simulation](Module%204/README.md)**
- **[Module 5 — Optimization in Synthesis](Module%205/README.md)**

---

# 📈 Final Outcome

The workshop provides a step-by-step understanding of how a digital design progresses from:

```text
Verilog RTL
    ↓
Testbench & Simulation
    ↓
Waveform Verification
    ↓
Synthesis
    ↓
Standard-Cell Mapping
    ↓
RTL Optimization
    ↓
Gate-Level Simulation
    ↓
Synthesis Optimization
    ↓
Optimized Hardware Netlist
```

This repository serves as a structured record of the **RTL Design & Synthesis Workshop — Modules 1 through 5**, including the concepts studied, practical experiments, simulation results, synthesis outputs and supporting documentation.
