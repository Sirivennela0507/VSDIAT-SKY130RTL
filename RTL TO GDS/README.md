📎RTL TO GATE-LEVEL SYNTHESIS AND GLS – SEQUENCE DETECTOR

📎PROJECT OVERVIEW This repository documents the complete work completed for assessment 25eg504h50, from the initial RTL design through functional simulation, synthesis, post-synthesis/Gate-Level Simulation (GLS), waveform analysis, and RTL-vs-GLS verification.

📎COMPLETE FLOW RTL Design ↓ Functional / Pre-Synthesis Simulation ↓ RTL Waveform Verification ↓ Logic Synthesis ↓ Synthesized Gate-Level Netlist ↓ Post-Synthesis / Gate-Level Simulation (GLS) ↓ GLS Waveform Verification ↓ RTL vs GLS Comparison ↓ Final Functional Conclusion

📎1. PROJECT DIRECTORY Working directory:

~/BabySoC_Simulation/assesments/25eg504h50 Files observed in the project:

25eg504h02/ ├── rtl/ ├── tb/ │ └── tb.v ├── synthesized.v ├── pre_synth_sim.out └── dump.vcd During GLS debugging, a corrected local SKY130 model was also created:

sky130_fd_sc_hd_gls.v

📎2. RTL DESIGN The design is a Verilog finite-state-machine based sequence detector.

Main module:

module sequence_detector(clk, reset, din, detected); Important signals:

Signal Description clk - Clock input reset- Reset input din -Serial data input detected-Sequence detection output state[2:0]-Current FSM state next_state[2:0]-Next FSM state

The RTL describes the intended behavior of the sequence detector. The FSM state changes according to the input din, and detected indicates a successful sequence detection.

📎3. TESTBENCH The testbench is located at: tb/tb.v It instantiates the design as:

sequence_detector dut ( .clk(clk), .reset(reset), .din(din), .detected(detected) ); 📎Clock The testbench generates the clock using: always #4 clk = ~clk; Therefore: Clock period = 8 ns 📎Input sequence The testbench applies a long sequence of 0 and 1 values using: drive_bit(1'b0); drive_bit(1'b1); and so on.

📎Detection counting The testbench also maintains:

integer detection_count = 0; and counts detection events when:

if (!reset && detected) detection_count = detection_count + 1; This count is useful for comparing RTL and GLS behavior.

📎VCD generation The testbench contains:

$dumpfile("dump.vcd"); $dumpvars(0, tb); Therefore, the simulation waveform is saved as: dump.vcd Important: the correct testbench path is tb/tb.v, not tab/tb.v

📎4. FUNCTIONAL/ PRE-SYNTHESIS SIMULATION Before synthesis, the original RTL was simulated with the testbench.

The simulation produced:

pre_synth_sim.out dump.vcd The VCD file was opened using GTKWave.

📎Important signals checked clk reset din detected state[2:0] next_state[2:0] detection_count 📎Purpose The purpose of pre-synthesis simulation was to verify that:

•reset initializes the FSM, •input data is applied correctly, •FSM states change according to the input,detected responds to the required sequence,the expected detection events are produced.

VSD-RTL-Design-and-Synthesis Repository navigation Code Issues Pull requests VSD-RTL-Design-and-Synthesis/A -RTL-to-GLS-Sequence-Detector /README_25eg504h50 (1).md 1 hour ago 830 lines (580 loc) · 15.2 KB

Preview

Code

Blame RTL to Gate-Level Synthesis and GLS – Sequence Detector Project Overview This repository documents the complete work completed for assessment 25eg504h50, from the initial RTL design through functional simulation, synthesis, post-synthesis/Gate-Level Simulation (GLS), waveform analysis, and RTL-vs-GLS verification.

Complete Flow RTL Design ↓ Functional / Pre-Synthesis Simulation ↓ RTL Waveform Verification ↓ Logic Synthesis ↓ Synthesized Gate-Level Netlist ↓ Post-Synthesis / Gate-Level Simulation (GLS) ↓ GLS Waveform Verification ↓ RTL vs GLS Comparison ↓ Final Functional Conclusion

reset Reset input din Serial data input detected Sequence detection output state[2:0] Current FSM state next_state[2:0] Next FSM state The RTL describes the intended behavior of the sequence detector. The FSM state changes according to the input din, and detected indicates a successful sequence detection.

Testbench The testbench is located at:
tb/tb.v It instantiates the design as:

sequence_detector dut ( .clk(clk), .reset(reset), .din(din), .detected(detected) ); Clock The testbench generates the clock using:

always #4 clk = ~clk; Therefore:

Clock period = 8 ns Input sequence The testbench applies a long sequence of 0 and 1 values using:

drive_bit(1'b0); drive_bit(1'b1); and so on.

Detection counting The testbench also maintains:

integer detection_count = 0; and counts detection events when:

if (!reset && detected) detection_count = detection_count + 1; This count is useful for comparing RTL and GLS behavior.

VCD generation The testbench contains:

$dumpfile("dump.vcd"); $dumpvars(0, tb); Therefore, the simulation waveform is saved as:

dump.vcd Important: the correct testbench path is tb/tb.v, not tab/tb.v.

Functional / Pre-Synthesis Simulation Before synthesis, the original RTL was simulated with the testbench.
The simulation produced:

pre_synth_sim.out dump.vcd The VCD file was opened using GTKWave.

Important signals checked clk reset din detected state[2:0] next_state[2:0] detection_count Purpose The purpose of pre-synthesis simulation was to verify that:

reset initializes the FSM, input data is applied correctly, FSM states change according to the input, detected responds to the required sequence, the expected detection events are produced. Screenshot 2 – Pre-Synthesis RTL Waveform Add:

images/02_pre_synthesis_waveform.png pre synthesis

📎5. WAVEFORM ANALYSIS GTKWave was used to inspect the generated VCD.

The waveform contains:

clk reset din detected state next_state detection_count The main purpose of this step was to establish the functional RTL reference before synthesis.

The RTL waveform is later compared against the GLS waveform.

📎6. LOGIC SYNTHESIS After verifying the RTL, the design was synthesized into a gate-level representation.

The generated netlist is: synthesized.v The synthesized module was checked using: grep -n "module sequence_detector" synthesized.v The result obtained was:

📎7. SYNTHESIZED GATE-LEVEL NETLIST THE FILE:

synthesized.v is the output representation used for the next stage.

The flow is:

RTL ↓ Synthesis ↓ synthesized.v ↓ Gate-Level Simulation This is important because GLS does not simulate the original RTL module; it checks the synthesized implementation.

📎8. POST-SYNTHESIS / GATE-LEVEL SIMULATION (GLS) The synthesized design was then prepared for Gate-Level Simulation. GLS uses:

tb/tb.v synthesized.v SKY130 standard-cell simulation model

The original SKY130 model was located at:

/home/vsduser/BabySoC_Simulation/src/gls_model/sky130_fd_sc_hd.v The purpose of GLS is to verify that the synthesized implementation still produces the intended functional behavior.

📎9. INITIAL GLS COMPILATION PROBLEM THE INITIAL GLS COMPILATION COMMAND WAS:

iverilog -g2012 -o gls_sim.out tb/tb.v synthesized.v /home/vsduser/BabySoC_Simulation/src/gls_model/sky130_fd_sc_hd.v Compilation failed with:

sky130_fd_sc_hd.v:67667: syntax error sky130_fd_sc_hd.v:67667: error: Invalid module item. Because compilation failed, the executable was not generated:

ls -lh gls_sim.out returned:

ls: cannot access 'gls_sim.out': No such file or directory

📎10. DEBUGGING THE SKY130 STANDARD-CELL MODEL The suspected declaration was searched using:

grep -n 'wire 1' /home/vsduser/BabySoC_Simulation/src/gls_model/sky130_fd_sc_hd.v | head The result showed:

67525: wire 1; 67667: wire 1; The declaration:

wire 1; caused the Verilog parser error because 1 is not a valid signal identifier.

📎11. CREATING A CORRECTED LOCAL SKY130 MODEL A local copy of the model was created:

cp /home/vsduser/BabySoC_Simulation/src/gls_model/sky130_fd_sc_hd.v ./sky130_fd_sc_hd_gls.v The invalid declarations were changed using:

sed -i -E 's/^[[:space:]]wire[[:space:]]+1[[:space:]];/ wire one;/' sky130_fd_sc_hd_gls.v The correction was verified using:

grep -n 'wire 1|wire one' sky130_fd_sc_hd_gls.v | head The result became:

67525: wire one; 67667: wire one; The surrounding sections were checked with:

sed -n '67515,67535p' sky130_fd_sc_hd_gls.v and:

sed -n '67655,67680p' sky130_fd_sc_hd_gls.v This confirmed the corrected local model contained:

wire one; instead of the invalid:

wire 1;

📎12. GLS COMPILATION The corrected local SKY130 model should be used for GLS:

iverilog -g2012 -o gls_sim.out tb/tb.v synthesized.v sky130_fd_sc_hd_gls.v If compilation succeeds, the executable is:

gls_sim.out Run the simulation using:

vvp gls_sim.out The testbench generates:

dump.vcd which can be opened with:

gtkwave dump.vcd

📎13. GLS WAVEFORM ANALYSIS The GLS waveform was inspected in GTKWave.

Important signals include:

clk reset din detected detection_count state[2:0] next_state[2:0] The waveform shows four detection events.

The first GLS detection observed in the recorded waveform occurs at approximately:

1169 ns The detection counter reaches:

4

📎14. RTL Vs GLS COMPARISON The same testbench input sequence is used to verify the synthesized implementation.

The key result is:

RTL detection events = 4 GLS detection events = 4 This shows that synthesis preserved the functional detection behavior for this testbench.

GLS can also show timing differences compared with ideal RTL simulation because the design is represented at gate level.

📎15. FINAL CONCLUSION Conclusion: Yes, the synthesized implementation preserves the functional behavior of the RTL for the given testbench. Both RTL and GLS simulations produce four detection events, confirming that the synthesized gate-level implementation maintains the intended sequence-detection functionality.

The recorded GLS waveform shows the first detection at approximately 1169 ns. Any gate-level timing difference observed in the waveform does not change the logical detection result for this testbench.

📎16. TOOLS USED Tool-Purpose

Verilog-RTL design and testbench Icarus Verilog (iverilog)-RTL/GLS compilation vvp-Running simulation Yosys>RTL synthesis SKY130 standard-cell model-Gate-level cell simulation GTKWave>Waveform analysis Linux terminal-Compilation, file handling and debugging Git/GitHub-Version control and submission

📎17. IMPORTANT COMMANDS •Check project files ls •Check testbench ls tb cat tb/tb.v •Check synthesized module grep -n "module sequence_detector" synthesized.v •Find SKY130 model issue grep -n 'wire 1' /home/vsduser/BabySoC_Simulation/src/gls_model/sky130_fd_sc_hd.v | head •Make local model copy cp/home/vsduser/BabySoC_Simulation/src/gls_model/sky130_fd_sc_hd.v ./sky130_fd_sc_hd_gls.v •Correct invalid declaration sed -i -E 's/^[[:space:]]wire[[:space:]]+1[[:space:]];/ wire one;/' sky130_fd_sc_hd_gls.v •Verify correction grep -n 'wire 1|wire one' sky130_fd_sc_hd_gls.v | head •Compile GLS iverilog -g2012 -o gls_sim.out tb/tb.v synthesized.v sky130_fd_sc_hd_gls.v •Run GLS vvp gls_sim.out •Open waveform gtkwave dump.vcd

ASSESSMENT SUMMARY Assessment ID: 25eg504h50
Design: Sequence Detector

Completed work:

•RTL design •Testbench •Functional/pre-synthesis simulation •VCD generation •GTKWave waveform analysis •Logic synthesis •Synthesized netlist verification •Post-synthesis / Gate-Level Simulation •SKY130 model debugging •GLS waveform analysis •RTL vs GLS comparison •Final functional verification •Final observed result:

Detection events = 4 First GLS detection ≈ 1169 ns Final result:

The synthesized gate-level implementation preserves the functional behavior of the RTL for the given testbench.

📎 SUBMISSION NOTE This README records the work completed up to the current stage, starting from RTL and continuing through pre-synthesis simulation, synthesis, post-synthesis/GLS, debugging of the SKY130 simulation model, waveform analysis, and final RTL-vs-GLS verification.
