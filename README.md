WIP
### code conventions

file_names
folder_names
ModuleNames
wire_names

# nand2tetris in verilog
This is an implementation of the HACK chipset for a Tang Primer 20k with dock ext board. It is written in verilog 2001.
This aims to keep to the declarative, modular and iterative style of the nand2tetris. The only bitwise logic expressions will be in tests and the `nand` primitive, all other modules are built on-top of it. Given FPGAs' complex and advanced tooling, most if not all of these abstractions are expected to be optimized away during synthesis, this will ensure reasonable performance.

## strcuture
The files in this project are organized accordingly:
`manual_tests` - in many places, these are modules that can be used to program an FPGA that will provide an output for manual verification.
`src/gate_logic` - contains all the basic logic gates.
`src/dock` - contains wrappers for the unique components of the Tang Primer 20k with its ext dock board.
`src/top.v` - contains the entrypoint.

##

