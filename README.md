# Static-Timing-Analysis-STA-Report-Debugging-of-a-4-bit-Synchronous-Counter
## Overview

This project demonstrates Static Timing Analysis (STA) of a 4-bit synchronous counter.

The RTL design was developed in Verilog HDL and synthesized using the Yosys Open Synthesis Suite. The synthesized design was analyzed using Static Timing Analysis concepts to study timing paths, slack, setup timing, hold timing, critical paths, and timing optimization techniques.

---

## Objectives

- Design a 4-bit synchronous counter
- Perform RTL synthesis
- Analyze timing paths
- Study setup timing
- Study hold timing
- Analyze slack
- Understand timing closure
- Suggest timing optimization techniques

---

## Tools Used

- Verilog HDL
- Yosys Open Synthesis Suite
- OpenSTA Timing Analysis Concepts
- GitHub

---

## Project Structure

```
STA_4bit_counter

├── rtl
│   └── counter.v

├── synthesis
│   ├── counter_netlist.v
│   └── synthesis_log.txt

├── constraints
│   └── counter_constraints.sdc

├── sta
│   ├── timing_report.rpt
│   ├── timing_violation.rpt
│   └── analysis.md

├── screenshots

├── report

└── README.md
```

---

## Results

The design successfully met timing constraints at a 10 ns clock period.

Worst Setup Slack

+6.680 ns

Worst Hold Slack

+0.090 ns

No setup or hold violations were observed.

A second timing scenario was created with a tighter clock period to demonstrate setup timing failures and debugging techniques.

---

## Learning Outcomes

- RTL synthesis
- Gate-level netlist generation
- Timing report interpretation
- Setup and hold analysis
- Critical path identification
- Timing optimization techniques
