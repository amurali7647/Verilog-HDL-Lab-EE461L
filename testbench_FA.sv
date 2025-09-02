module tb_OneBitFA1;

//Input to design from TB
reg a_i;
reg b_i;
reg ci_i;

//Output signals from design to TB
wire sum_o;
wire co_o;

//Instantiate the design
OneBitFA1 OFA1 (
  .a_i(a_i),
  .b_i(b_i),
  .ci_i(ci_i),
  .sum_o(sum_o),
  .co_o(co_o)
);

// Test procedure
initial begin
  //Test cases
  #10 a_i = 0; b_i = 0; ci_i = 0;

  #10 a_i = 0; b_i = 0; ci_i = 1;

  #10 a_i = 0; b_i = 1; ci_i = 0;

  #10 a_i = 0; b_i = 1; ci_i = 1;

  #10 a_i = 1; b_i = 0; ci_i = 0;

  #10 a_i = 1; b_i = 0; ci_i = 1;

  #10 a_i = 1; b_i = 1; ci_i = 0;

  #10 a_i = 1; b_i = 1; ci_i = 1;

end
  
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;			//dump all variables in testbench & design
end


endmodule
