# Day 1 – RTL Design and Verification

## Objectives
- Understand Full Adder architecture
- Build 4-bit Ripple Carry Adder
- Build 4-bit Carry Lookahead Adder
- Verify functionality using testbenches

## Concepts Learned
- Full Adder
- Ripple Carry Adder
- Carry Lookahead Adder
- Testbench
- Simulation
- Git and GitHub basics

## Tasks Completed
- Implemented full_adder.v
- Implemented rca_4bit.v
- Implemented cla_4bit.v
- Created testbenches
- Verified outputs using Icarus Verilog
- Created GitHub repository

## Results

### RCA Verification
PASS

### CLA Verification
PASS

## Problems Faced
- Understanding VS Code
- Learning Linux commands
- Git configuration

## Solutions
- Installed Icarus Verilog
- Connected VS Code with Ubuntu
- Learned git init, add, commit and push

## Milestone Achieved
RCA RTL Complete
CLA RTL Complete
RTL Verification Complete

## Next Steps
Yosys
# Day 2 – Simulation, GTKWave and Yosys Synthesis

## Objectives

* Verify RCA functionality through simulation.
* Learn waveform generation and visualization.
* Perform logic synthesis using Yosys.
* Generate gate-level netlists.

## Work Completed

### Simulation

* Simulated the 4-bit Ripple Carry Adder using Icarus Verilog.
* Verified outputs through terminal results.
* Learned the purpose of testbenches and simulation.

### VCD Generation and GTKWave

* Added `$dumpfile()` and `$dumpvars()` commands to generate VCD files.
* Generated `rca_wave.vcd`.
* Opened the waveform in GTKWave.
* Observed changes in:

  * A[3:0]
  * B[3:0]
  * Cin
  * Sum[3:0]
  * Cout
* Learned that waveform height does not represent the numerical value of a signal; waveforms only show logic transitions with time.

### Yosys Synthesis

* Synthesized RCA and CLA designs using Yosys.
* Executed synthesis flow:

  * read_verilog
  * hierarchy
  * proc
  * opt
  * flatten
  * stat
* Studied gate statistics and optimization results.

### Netlist Generation

* Generated:

  * rca_netlist.v
  * cla_netlist.v
* Learned the difference between RTL code and gate-level netlists.

## Key Concepts Learned

### VCD (Value Change Dump)

A file generated during simulation that stores signal transitions with respect to time and is used by GTKWave for waveform visualization.

### Gate-Level Netlist

A synthesized representation of a digital circuit consisting of logic gates, wires, and interconnections generated after synthesis.

## Deliverables

* RCA simulation completed
* GTKWave waveform generated
* RCA netlist generated
* CLA netlist generated
* GitHub repository updated

## Next Steps

* Install Sky130 PDK
* Perform technology mapping
* Install/OpenROAD environment
* Continue RTL-to-GDS flow
# Day 3 – OpenLane and OpenROAD Environment Setup

## Objectives

* Prepare the ASIC design environment for RTL-to-GDS implementation.
* Install and configure Docker.
* Set up OpenLane and verify OpenROAD tools.

## Work Completed

### Docker Setup

* Installed Docker Desktop on Windows.
* Enabled WSL integration for Ubuntu.
* Verified Docker installation using:

  * `docker --version`
  * `docker run hello-world`
* Learned the concept of Docker containers and their role in ASIC tool deployment.

### OpenLane Setup

* Created a dedicated workspace for ASIC tools.
* Cloned the OpenLane repository from GitHub.
* Downloaded the OpenLane Docker image.
* Explored the OpenLane project structure and documentation.

### OpenROAD Environment Verification

* Entered the OpenLane container using:

  * `make mount`
* Verified Yosys installation:

  * `yosys -V`
* Verified OpenROAD installation:

  * `openroad -version`

## Key Concepts Learned

### Docker Container

A container is an isolated software environment that contains all tools, libraries, and dependencies required to run an application.

### OpenLane

An automated RTL-to-GDS flow that integrates synthesis, floorplanning, placement, clock tree synthesis, routing, and layout generation.

### OpenROAD

An open-source physical design tool used for floorplanning, placement, routing, and timing optimization of ASIC designs.

## Deliverables

* Docker Desktop installed and configured.
* Docker successfully connected to WSL Ubuntu.
* OpenLane repository downloaded.
* OpenLane Docker image downloaded.
* OpenLane container launched successfully.
* Yosys and OpenROAD verified inside the container.

## Next Steps

* Install and configure Sky130 PDK.
* Run a sample OpenLane design.
* Understand floorplanning and placement outputs.
* Prepare RCA and CLA designs for physical implementation.

# Day 4 Journal – OpenLane Setup, Sky130 PDK Installation, and Design Integration

## Objective

Set up a complete OpenLane physical design environment and prepare the 4-bit Ripple Carry Adder (RCA) design for floorplanning.

## Tasks Completed

### 1. OpenLane Environment Setup

* Installed and verified Docker functionality.

* Successfully pulled OpenLane Docker images.\

* Verified installation of OpenROAD and Yosys within the OpenLane environment.

* Confirmed tool versions and functionality using command-line checks.

### 2. Investigation of PDK Issues

* Encountered issues with the older OpenLane 1.0.2 flow due to deprecated Ciel-based PDK management.
* Investigated OpenLane directory structure and configuration files.
* Identified that modern OpenLane uses Volare for PDK management instead of Ciel.

### 3. Sky130 PDK Installation

* Explored Volare commands and available PDK versions.
* Downloaded and installed the Sky130 PDK using Volare.
* Verified successful installation of:

  * sky130A
  * sky130B
* Enabled the Sky130 PDK through Volare.
* Verified presence of technology files and standard cell libraries such as:

  * sky130_fd_sc_hd
  * sky130_fd_sc_hs
  * sky130_fd_sc_ls
  * sky130_fd_sc_hvl

### 4. OpenLane Design Preparation

* Created a dedicated OpenLane project workspace.
* Created design directory structure for the 4-bit RCA design.
* Copied RTL source files:

  * full_adder.v
  * rca_4bit.v
* Created OpenLane configuration file (config.json).

### 5. OpenLane Flow Execution Attempt

* Successfully launched OpenLane flow using:

  * Sky130 PDK
  * RCA design configuration
* OpenLane correctly detected:

  * Design files
  * Configuration file
  * Sky130 PDK
* Flow execution stopped due to a PDK version mismatch between the installed PDK version and the version expected by OpenLane.

### 6. Root Cause Identification

* Identified the exact PDK version required by OpenLane:
  bdc9412b3e468c102d01b7cf6337be06ec6e9c9a
* Verified that the required version is available through Volare repositories.
* Prepared for installation of the matching PDK version in the next session.

## Key Concepts Learned

* Difference between OpenLane 1.x and newer OpenLane environments.
* Purpose of Process Design Kits (PDKs).
* Role of Volare in managing Sky130 PDK versions.
* OpenLane design directory structure.
* Meaning of config.json parameters:

  * DESIGN_NAME
  * VERILOG_FILES
  * CLOCK_PORT
  * CLOCK_PERIOD
  * FP_CORE_UTIL
  * FP_ASPECT_RATIO
* Difference between combinational and sequential circuits.
* Why a Ripple Carry Adder does not require a clock port.

## Deliverables Achieved

✓ Docker setup verified
✓ OpenLane environment verified
✓ OpenROAD verified
✓ Yosys verified
✓ Sky130 PDK installed and enabled
✓ RCA design integrated into OpenLane project structure
✓ OpenLane flow launched successfully
✓ Root cause of flow failure identified

## Next Session Goals

1. Install the exact Sky130 PDK version required by OpenLane.
2. Re-run OpenLane flow.
3. Complete synthesis.
4. Generate first floorplan.
5. Analyze floorplanning reports and outputs.
Completed full RTL-to-GDS flow for 4-bit RCA.
Resolved OpenLane PDK version mismatch.
Resolved PDN generation issue by increasing die area and reducing utilization.
Successfully completed synthesis, floorplanning, placement, routing, STA, DRC, LVS and GDS generation.

Implemented and corrected true 4-bit Carry Lookahead Adder (CLA).
Verified functionality through simulation.
Successfully completed full RTL-to-GDS flow for CLA.
Generated final GDS for both RCA and CLA using Sky130 PDK and OpenLane. 