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
`src/layer_1` - contains all the basic logic gates corrosponding to project1
`src/layer_2` - contains the arithmetic logic unit and its direct dependencies corrosponding to project2
`src/layer_3a` - contains registers and small RAM banks, corrosponding to project3a
`src/layer_3b` - contains large ram banks, corrosponding to project3b
`src/layer_4` - contains CPU, all memory banks and the abstract Computer, corrosponding to project5
`src/layer_5` - contains the IO mappings for the abstract computer
`src/dock` - contains wrappers for the unique components of the Tang Primer 20k with its ext dock board.
`src/top.v` - contains the entrypoint. This instantiates all the modules of the hack chipset and connects them to board-specific logic.

## compatability
 - Assumes a clock of 27'000'000 Hz. Modifications may need to be made (eg: change slow_clock) for other frequencies. 

