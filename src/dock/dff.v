// A naive implementation of a dual flip-flop.
// An explicit clock flag is required in vhdl
// Holds the value last written to it

module DFF(
    input in,   // value to write
    output reg out, // previously written value
    input clock
);


always @(negedge clock) begin
    out <= in;
end


endmodule

// used for testing at https://hdlbits.01xz.net/wiki/Iverilog
//module top_module ();
//	reg clk=0;
//	always #5 clk = ~clk;  // Create clock with period=10
//	initial `probe_start;   // Start the timing diagram
//
//	`probe(clk);        // Probe signal "clk"
//
//	// A testbench
// 	reg in=0;
// 	initial begin
// 		#10 in <= 1;
// 		#10 in <= 0;
// 		#20 in <= 1;
// 		#20 in <= 0;
// 		#50 $finish;            // Quit the simulation
// 	end
//     wire out;
//     DFF one (in, out, clk);
// endmodule
