set sdc_version 2.0

# Set the current design
current_design ariane

set clk_period 2.222
create_clock -name "core_clock" -period $clk_period -waveform {0.0 [expr $clk_period / 2.0]} [get_ports clk_i]
