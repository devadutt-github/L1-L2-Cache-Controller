#!/bin/bash

# Compile the Verilog code
iverilog -o cache_sim -I ../rtl ../rtl/l1_cache.v ../rtl/l2_cache.v ../rtl/cache_controller.v ../testbench/cache_testbench.v

# Run the simulation
./cache_sim -o waveforms.vcd

# View the waveforms (optional - you can comment this out if you just want to generate the VCD)
gtkwave waveforms.vcd
