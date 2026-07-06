# SDC Constraints File
# Project : 4-bit Synchronous Counter
# Tool    : OpenSTA


# Clock Definition
create_clock -name clk -period 10.000 [get_ports clk]

# Input Delay
set_input_delay 1.0 -clock clk [get_ports rst]

# Output Delay
set_output_delay 1.0 -clock clk [get_ports {count[*]}]

# Clock Uncertainty
set_clock_uncertainty 0.20 [get_clocks clk]