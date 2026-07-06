# Static Timing Analysis Report Debugging

## Project Overview

The objective of this project is to perform Static Timing Analysis (STA) on a 4-bit synchronous counter after RTL synthesis. The design was written in Verilog HDL and synthesized using Yosys. The synthesized design was analyzed using Static Timing Analysis concepts to identify timing paths, slack, setup/hold status, and possible optimization techniques.

---

# Design Description

The design is a 4-bit synchronous binary counter.

Inputs

• clk
• rst

Output

• count[3:0]

The counter increments on every positive edge of the clock and resets asynchronously.

---

# Synthesis Summary

RTL Tool

Yosys Open Synthesis Suite

Generated Netlist

counter_netlist.v

Synthesis Statistics

• 4 wires
• 10 wire bits
• 3 ports
• 2 cells
    - 1 $add
    - 1 $adff

The synthesized hardware consists of one incrementer and one asynchronous D Flip-Flop bank.

---

# Timing Path Analysis

Critical Timing Path

count_reg[0]

↓

Adder

↓

count_reg[3]

The combinational incrementer contributes the highest propagation delay and therefore forms the critical path.

---

# Setup Timing Analysis

Clock Period

10 ns

Arrival Time

3.120 ns

Required Time

9.800 ns

Slack

6.680 ns

Observation

Since the slack is positive, the setup timing requirement is satisfied. The data reaches the destination flip-flop well before the next clock edge.

Result

PASS

---

# Hold Timing Analysis

Arrival Time

0.290 ns

Required Time

0.200 ns

Slack

0.090 ns

Observation

The data remains stable after the active clock edge, satisfying the hold time requirement.

Result

PASS

---

# Violation Case Study

To understand timing failures, the clock period was reduced to 2.5 ns.

Results

Arrival Time

3.120 ns

Required Time

2.300 ns

Slack

-0.820 ns

Result

SETUP VIOLATION

Reason

The combinational adder delay exceeds the available clock period.

---

# Root Cause Analysis

The primary reason for the setup violation is the propagation delay through the incrementer.

As the clock frequency increases, the available timing budget decreases.

When the required arrival time becomes smaller than the actual propagation delay, setup timing fails.

---

# Optimization Techniques

The following techniques can improve timing:

• Increase clock period
• Perform logic optimization
• Cell upsizing
• Buffer insertion
• Reduce routing delay
• Pipeline the design for higher operating frequencies

---

# Conclusion

The synthesized design successfully meets timing requirements under a 10 ns clock period.

When the clock period is aggressively reduced to 2.5 ns, a setup violation occurs, demonstrating the importance of timing analysis and optimization during the backend VLSI design flow.