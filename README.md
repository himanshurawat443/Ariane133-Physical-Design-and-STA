# Ariane133-Physical-Design-and-STA
Implemented the Ariane133 RTL design on the Nangate45 open-source technology node with the primary goal of achieving timing closure at a target frequency of 450 MHz.

The goal is to take the provided ChiPBench RTL and close the design through routing using open-source EDA tools.

Note: the prompt may refer to `aryan133`; the upstream benchmark name is `ariane133`.

## Goal

Implement the provided `ariane133` RTL on the open-source Nangate45 technology node and close timing at **450 MHz**.

Below flow were used for this project:

- OpenROAD
- OpenLane
- OpenSTA
- Yosys 
- Nangate45 / FreePDK45 open-source technology collateral

Tool installation, PDK setup, flow wiring and debugging are part of the project.

Reference repositories:

- ChiPBench: <https://github.com/MIRALab-USTC/ChiPBench>
- OpenROAD-flow-scripts: <https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts>
- OpenROAD: <https://github.com/The-OpenROAD-Project/OpenROAD>

## Files

- `rtl/ariane.sv2v.v`: flattened Verilog RTL for the Ariane133 design from ChiPBench.
- `rtl/macros.v`: SRAM macro wrapper modules from ChiPBench.
- `constraints/ariane_450mhz.sdc`: timing constraints for a 450 MHz target.
- `constraints/physical_hints.tcl`: ChiPBench physical implementation hints for Nangate45.
- `constraints/io.tcl`: optional IO placement exclusion hint from the upstream OpenROAD setup.
- `rtl/LICENSE`: upstream Ariane license reference.
- `SOURCES.md`: provenance for the provided files.

## Required Flow Stages

Design is run through below stages:

1. Synthesis
2. Floorplanning
3. Placement
4. Clock tree synthesis
5. Global routing
6. Detailed routing

Sign-off checks are not required. Stop after detailed routing unless you choose to provide extra reports.

## Required Constraints

Use the provided SDC as the starting point:

- Top module: `ariane`
- Clock port: `clk_i`
- Clock name: `core_clock`
- Clock period: `2.222 ns`
- Target frequency: about `450 MHz`
- Input delay: `20%` of clock period
- Output delay: `20%` of clock period
- Clock latency: `0.535 ns`

Recommended physical setup, based on the ChiPBench Ariane133 reference:

- Technology: Nangate45 / FreePDK45
- SRAM macro: `fakeram45_256x16`
- Initial die area: `0 0 1500 1500`
- Initial core area: `10 12 1448 1448`
- Initial macro halo: `10 um 10 um`
- Initial macro channel: `20 um 20 um`
- Pin placement exclusion hint: `left:0-500`, `left:1000-1500:`, `right:*`, `top:*`, `bottom:*`
- Suggested route layers: `metal2` through `metal10`
- Global route hint: allow congestion and use multiple congestion iterations
- Detailed route hint: candidates may tune the detailed-route iteration limit

## Expected Results

A short report and generated artifacts containing:

- Tool versions and installation/setup notes.
- Commands used to run the flow.
- Final routed DEF and/or ODB.
- Synthesis, floorplan, placement, CTS, global route, and detailed route logs/reports.
- Timing report showing whether the design closes at 450 MHz.
- Explanation of any constraint, floorplan, macro placement, or flow changes.
