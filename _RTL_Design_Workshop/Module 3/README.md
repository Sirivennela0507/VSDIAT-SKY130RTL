# Module 3 — RTL Optimization and Constant-Driven Logic

## Purpose

This module focuses on recognizing logic that can be simplified by synthesis. The supplied visual material centers on D flip-flop constant cases, counter optimization and checks used to observe how RTL changes are reflected in synthesized logic.

## 1. Constant-Driven DFF Cases

When a flip-flop is assigned a constant or is controlled by constant conditions, the synthesizer can often remove unnecessary logic.

The important questions are:

1. What value can the register actually take?
2. Is the data input variable or fixed?
3. Can a condition ever become true or false?
4. Does the register still need to exist after optimization?

The `dff_const*` images illustrate different constant-related cases.

## 2. Counter Optimization

Counters are normally described with clocked RTL and arithmetic operations. Depending on the coding style and constants involved, synthesis may simplify the resulting hardware.

The supplied `counter_opt*` material should be read together:

- RTL/code view
- waveform view
- optimized schematic/logic view

This makes it easier to compare **what was written** with **what hardware remains**.

## 3. Optimization Checks

The `opt_check*` assets provide examples for examining synthesis results after optimization.

A useful learning sequence is:

```text
RTL description
      ↓
Simulation
      ↓
Synthesis
      ↓
Optimization
      ↓
Inspect resulting logic
```

## 4. Why Optimization Matters

Optimization is not simply about making code shorter. A synthesis tool tries to remove logic that does not contribute to the required behavior.

Potential benefits include:

- fewer gates
- less unnecessary switching
- simpler connectivity
- reduced implementation cost
- easier timing closure in some cases

## 5. Verification Reminder

An optimized circuit must still implement the same required behavior. Therefore, simulation and synthesis inspection should be considered together.

## Visual References

All supplied Module 3 images are placed under `images/`, including:

- constant DFF examples
- constant-case code screenshots
- counter optimization diagrams
- counter waveforms
- optimization-check screenshots

## Module Takeaway

The major lesson is to look beyond the RTL text and ask what hardware is actually necessary. Constant propagation, unreachable conditions and redundant structures can disappear during synthesis.
