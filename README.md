# ASIC RTL-to-GDS Implementation and Comparative Analysis of 4-bit Ripple Carry Adder (RCA) and Carry Lookahead Adder (CLA)


![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![OpenLane](https://img.shields.io/badge/Flow-OpenLane-green)
![Sky130](https://img.shields.io/badge/PDK-Sky130-orange)
![ASIC](https://img.shields.io/badge/Project-ASIC-red)

## 📖 Project Overview
## 📖 Project Overview

This project demonstrates the complete ASIC design flow by implementing and comparing two widely used digital adder architectures: a **4-bit Ripple Carry Adder (RCA)** and a **4-bit Carry Lookahead Adder (CLA)**.

Both designs were developed using **Verilog HDL** and implemented through the complete **RTL-to-GDSII** flow using the **Sky130 Process Design Kit (PDK)** and the **OpenLane** open-source ASIC design toolchain.

The project provides hands-on experience with every major stage of the ASIC physical design process, including RTL design, simulation, synthesis, floorplanning, placement, routing, timing analysis, physical verification, and GDSII generation.

---

# 🎯 Objectives

* Design a 4-bit Ripple Carry Adder (RCA) in Verilog HDL.
* Design a 4-bit Carry Lookahead Adder (CLA) in Verilog HDL.
* Verify functional correctness through simulation.
* Perform logic synthesis using Yosys.
* Complete the RTL-to-GDSII implementation using OpenLane.
* Compare RCA and CLA in terms of speed, delay, area, and hardware complexity.
* Understand the complete ASIC physical design flow.

---

# 🛠️ Tools and Technologies

| Tool           | Purpose                            |
| -------------- | ---------------------------------- |
| Verilog HDL    | RTL Design                         |
| Icarus Verilog | Functional Simulation              |
| GTKWave        | Waveform Visualization             |
| Yosys          | Logic Synthesis                    |
| OpenLane       | RTL-to-GDS Flow                    |
| OpenROAD       | Floorplanning, Placement & Routing |
| OpenSTA        | Static Timing Analysis             |
| Magic          | DRC, LVS and GDS Generation        |
| KLayout        | GDS Layout Visualization           |
| Docker         | Tool Environment                   |
| Sky130 PDK     | Standard Cell Library              |

---

# 🔄 ASIC RTL-to-GDS Design Flow

```text
Verilog RTL Design
        │
        ▼
Functional Simulation (Icarus Verilog)
        │
        ▼
Waveform Verification (GTKWave)
        │
        ▼
Logic Synthesis (Yosys)
        │
        ▼
Floorplanning
        │
        ▼
Power Distribution Network (PDN)
        │
        ▼
Placement
        │
        ▼
Clock Tree Synthesis (CTS)
        │
        ▼
Routing
        │
        ▼
Static Timing Analysis (OpenSTA)
        │
        ▼
DRC & LVS Verification
        │
        ▼
GDSII Generation
        │
        ▼
Layout Visualization (KLayout)
```

---

# 📂 Repository Structure

```text
ASIC-RTL-to-GDS-RCA-CLA
│
├── rtl/
│   ├── full_adder.v
│   ├── rca_4bit.v
│   └── cla_4bit.v
│
├── testbench/
│   ├── tb_rca.v
│   └── tb_cla.v
│
├── synthesis/
│   ├── rca_netlist.v
│   └── cla_netlist.v
│
├── reports/
├── screenshots/
├── docs/
└── README.md
```

---

# 📊 RCA vs CLA Comparison

| Parameter           | Ripple Carry Adder (RCA) | Carry Lookahead Adder (CLA) |
| ------------------- | ------------------------ | --------------------------- |
| Carry Generation    | Sequential (Ripple)      | Parallel (Lookahead)        |
| Speed               | Lower                    | Higher                      |
| Propagation Delay   | Higher                   | Lower                       |
| Area                | Smaller                  | Larger                      |
| Hardware Complexity | Low                      | Moderate                    |
| Routing Complexity  | Simpler                  | More Complex                |
| Best Applications   | Low-area designs         | High-performance processors |

---

# ✅ Project Outcomes

Successfully completed the following stages for both RCA and CLA:

* ✔ RTL Design
* ✔ Functional Simulation
* ✔ Logic Synthesis
* ✔ Netlist Generation
* ✔ Floorplanning
* ✔ Power Distribution Network (PDN)
* ✔ Placement
* ✔ Clock Tree Synthesis (CTS)
* ✔ Routing
* ✔ Static Timing Analysis (STA)
* ✔ Design Rule Check (DRC)
* ✔ Layout Versus Schematic (LVS)
* ✔ GDSII Generation
* ✔ Physical Layout Visualization using KLayout

---

# 📸 Project Screenshots

This repository includes screenshots of:

* RTL Simulation Waveforms
* Synthesis Results
* Floorplanning
* Placement
* Routing
* Final GDSII Layout

*(Screenshots are available in the `screenshots` folder.)*

---

# 🎓 Key Learnings

Through this project, I gained practical experience in:

* RTL Design using Verilog
* Functional Verification
* Logic Synthesis
* Standard Cell Libraries
* ASIC Physical Design Flow
* Floorplanning
* Placement and Routing
* Static Timing Analysis
* Physical Verification (DRC & LVS)
* GDSII Layout Generation
* Open-source ASIC Design Tools

---

# 🚀 Future Improvements

* Extend the design to 8-bit, 16-bit and 32-bit adders.
* Compare additional adder architectures such as Carry Select Adder (CSLA) and Carry Skip Adder (CSKA).
* Analyze power consumption and optimization techniques.
* Implement and validate the designs on FPGA platforms.
* Perform detailed performance benchmarking across multiple technology nodes.

---

# 👩‍💻 Author

**Riddhima Prakash**

B.E. Electronics and Communication Engineering

BMS College of Engineering, Bengaluru

---

## ⭐ Acknowledgement

This project was completed as part of my learning journey in ASIC and VLSI design to gain hands-on experience with the complete open-source RTL-to-GDSII flow using the Sky130 PDK and OpenLane toolchain.
