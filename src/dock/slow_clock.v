// 0.55Hz clock
module SlowClock(
    input clock_in,    // 27_000_000 Hz
    output clock_out
);

/* counter */
parameter count_value = 13_499_999; // clock cycles for *around* a seccond. 

reg [23:0] count_value_reg;
reg count_value_flag;

always @(posedge clock_in) begin                       // forever loop
    if (count_value_reg <= count_value) begin      // increment counter if not at max
        count_value_reg <=count_value_reg + 1'b1;
        count_value_flag <= 1'b0;                   // don't flip flag
    end
    else begin                                      // when at max, reset counter
        count_value_reg <= 23'b0;
        count_value_flag <= 1'b1;                   // do glip flag once and reset
    end
end


reg clock_out_reg = 1'b0; //initialize an led to low

always @(posedge clock_in) begin 
    if (count_value_flag)                           
        clock_out_reg <= ~clock_out_reg;              // flip IO voltage on tick where flag is high
    else
        clock_out_reg <= clock_out_reg;           // refresh io volrage with current value if flag is low
end

assign clock_out = clock_out_reg;

endmodule