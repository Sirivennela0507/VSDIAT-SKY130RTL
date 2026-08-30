# Module 1 — RTL Foundations and the Design Flow

## Purpose

This module establishes the basic workflow used in digital RTL design. The central example is a small multiplexer, which is simple enough to understand while still demonstrating the complete path from HDL description to simulation and synthesis.

## Topics Covered

### 1. RTL design
RTL (Register Transfer Level) describes how digital data moves and how combinational or sequential logic operates. Verilog is used here to express that hardware behavior.

### 2. Design versus testbench
The **DUT/design** is the hardware being implemented. A **testbench** supplies stimulus, observes outputs and checks behavior. The testbench is verification code and is normally not synthesized into hardware.

### 3. 2:1 multiplexer
A 2:1 mux selects one of two data inputs using a select signal:

- `sel = 0` → output follows input 0
- `sel = 1` → output follows input 1

This example is useful for learning conditional RTL coding.

### 4. RTL simulation
The design and its testbench can be compiled with Icarus Verilog. Simulation produces signal activity that can be saved as a VCD waveform file.

Typical flow:

```text
Verilog RTL → Testbench → Icarus Verilog → VCD → GTKWave
```

### 5. Waveform inspection
GTKWave helps verify whether inputs and outputs change as expected. For the mux, the waveform should show the selected input appearing at the output.

### 6. Synthesis with Yosys
Yosys converts synthesizable RTL into a logic representation and eventually a technology-mapped netlist. The important distinction is:

```text
Simulation → checks behavior
Synthesis   → determines implementable hardware structure
```

### 7. Standard-cell libraries
A Liberty `.lib` file describes cells available to the synthesis flow, including their logical behavior and implementation-related characteristics.

## Visual References

The `images/` directory contains the supplied diagrams and screenshots for:

- RTL flow
- design and testbench
- mux code and waveform
- Icarus Verilog flow
- Yosys setup and synthesis
- standard-cell library concepts

## Practical Checklist

- [ ] Identify the DUT and its ports.
- [ ] Understand the mux truth table.
- [ ] Write or read the RTL description.
- [ ] Understand what the testbench is doing.
- [ ] Run simulation and inspect the waveform.
- [ ] Distinguish simulation from synthesis.
- [ ] Understand why a technology library is used.

## Module Takeaway

The key idea is to treat RTL development as a flow rather than as isolated Verilog code: **describe → verify → inspect → synthesize**.
