# ChiPBench Ariane133 physical implementation hints for Nangate45.
# These are not a complete flow. Candidates should adapt them to their
# OpenROAD/OpenLane setup and justify any changes.

set design_name ariane
set design_nickname ariane133
set platform nangate45

set die_area  {0 0 1500 1500}
set core_area {10 12 1448 1448}

set macro_place_halo    {10 10}
set macro_place_channel {20 20}

set place_pins_args {
  -exclude left:0-500
  -exclude left:1000-1500:
  -exclude right:*
  -exclude top:*
  -exclude bottom:*
}

set required_macro_lef fakeram45_256x16.lef
set required_macro_lib fakeram45_256x16.lib

set global_route_args {
  -allow_congestion
  -verbose
  -congestion_iterations 5
}

set detailed_route_args {
  -droute_end_iter 4
}
