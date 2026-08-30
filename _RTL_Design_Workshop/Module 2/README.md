# Module 2 — Sequential Logic, Hierarchy and Synthesis

## Purpose

This module extends the RTL flow into clocked designs and introduces how synthesis represents sequential logic and hierarchical structures.

## 1. Flip-Flop Variations

The visual material covers several D flip-flop styles.

### Synchronous reset

A synchronous reset is evaluated with the clocked process. Its effect is therefore associated with a clock edge.

### Asynchronous set

An asynchronous set can force the stored value without waiting for a normal clock edge. This behavior must be represented in the sensitivity/event controls of the RTL.

### Asynchronous reset

An asynchronous reset similarly forces a known reset state independently of the normal data capture operation.

The important comparison is:

| Feature | Synchronous control | Asynchronous control |
|---|---|---|
| Depends on clock edge | Yes | No |
| Used to force a known state | Yes | Yes |
| RTL event sensitivity | Clock-centered | Clock + async control |

## 2. Simulation and Waveforms

Each sequential circuit should be checked with stimulus that exercises:

- normal data capture
- assertion of reset/set
- release of reset/set
- transitions around clock edges

The supplied waveform images provide visual examples of these behaviors.

## 3. Synthesis of Sequential Logic

A synthesis tool may infer a generic flip-flop from RTL and then map it to a real standard-cell flip-flop. The library-mapping stage is therefore important when the final implementation must use a particular technology library.

## 4. Multiplication by Constants

The module also demonstrates multiplication by powers of two.

Conceptually:

```text
x × 2  = x << 1
x × 8  = x << 3
```

For fixed powers of two, synthesis can reduce the operation to wiring/bit shifting rather than building a general-purpose multiplier.

## 5. Hierarchical RTL

A top-level design can instantiate smaller modules. This improves organization and allows a complex design to be divided into understandable blocks.

A useful mental model is:

```text
Top module
   ├── Submodule A
   └── Submodule B
```

## 6. Hierarchical versus Flat Synthesis

A hierarchical netlist retains recognizable module boundaries. A flattened netlist combines the logic into a single level.

- **Hierarchy:** easier to relate implementation back to the RTL structure.
- **Flattening:** gives synthesis more freedom to view the design as one combined logic network.

## Visual References

The `images/` directory contains the supplied flip-flop diagrams/waveforms, constant-multiplication example and hierarchical-design diagram.

## Module Takeaway

Module 2 connects behavioral RTL to actual sequential cells and shows that synthesis can simplify arithmetic and reorganize a design without changing its intended logic.
