# Sources and Provenance

The provided RTL and constraints are derived from the public ChiPBench repository, which itself benchmarks placement algorithms on top of OpenROAD-flow-scripts.

## Primary Upstream: ChiPBench

- Repository: <https://github.com/MIRALab-USTC/ChiPBench>
- Snapshot checked: `ea28bebab06977b348a74d3fd07275bb828ca68e`
- Commit date: `2025-09-22`
- Commit subject: `Update lefdef2bookshelf_or.py`

Source paths used:

- `flow/designs/src/ariane133/ariane.sv2v.v`
- `flow/designs/nangate45/ariane133/ariane.sdc`
- `flow/designs/nangate45/ariane133/macros.v`
- `flow/designs/nangate45/ariane133/config.mk`

The SDC in this assignment was adjusted from the ChiPBench `4.0 ns` reference clock period to `2.222 ns` for a 450 MHz target.

## OpenROAD Reference

- Repository: <https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts>
- Snapshot checked: `fb65d5b487d2afd443fc1892330f622c776a57ac`
- Commit date: `2026-07-01`
- Commit subject: `Merge pull request #4321 from The-OpenROAD-Project-staging/random-seed`

Additional reference:

- OpenROAD: <https://github.com/The-OpenROAD-Project/OpenROAD>

The optional `constraints/io.tcl` file is from the OpenROAD-flow-scripts Ariane133 setup and mirrors the pin-exclusion intent that ChiPBench encodes as `PLACE_PINS_ARGS`.

## Benchmark Reference

ChiPBench paper/source:

- <https://arxiv.org/abs/2407.15026>

The paper identifies `ariane133` as an Ariane Core benchmark sourced from OpenROAD-flow-scripts.

The anonymous ChiPBench repository link in the paper, `https://anonymous.4open.science/r/ChiPBench-D1B2/`, returned HTTP 410 when checked on 2026-07-02, so this assignment uses the durable OpenROAD-flow-scripts upstream source.

## License

The Ariane RTL license is included at `rtl/LICENSE`. Candidates should preserve upstream notices in any redistributed artifacts.
