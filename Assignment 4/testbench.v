`timescale 1ns/1ps
module tb_rtl_gates_2inputs;

  reg a1;
  wire y1_asg, y1_alw;

  reg a, b;
  wire y_and_asg, y_and_alw;
  wire y_or_asg,  y_or_alw;
  wire y_nand_asg, y_nand_alw;
  wire y_nor_asg,  y_nor_alw;
  wire y_xor_asg,  y_xor_alw;
  wire y_xnor_asg, y_xnor_alw;

  // DUTs
  not1_assign u_not1_assign(.a(a1), .y(y1_asg));
  not1_always u_not1_always(.a(a1), .y(y1_alw));

  and2_assign  u_and2_assign (.a(a), .b(b), .y(y_and_asg ));
  and2_always  u_and2_always (.a(a), .b(b), .y(y_and_alw ));
  or2_assign   u_or2_assign  (.a(a), .b(b), .y(y_or_asg  ));
  or2_always   u_or2_always  (.a(a), .b(b), .y(y_or_alw  ));
  nand2_assign u_nand2_assign(.a(a), .b(b), .y(y_nand_asg));
  nand2_always u_nand2_always(.a(a), .b(b), .y(y_nand_alw));
  nor2_assign  u_nor2_assign (.a(a), .b(b), .y(y_nor_asg ));
  nor2_always  u_nor2_always (.a(a), .b(b), .y(y_nor_alw ));
  xor2_assign  u_xor2_assign (.a(a), .b(b), .y(y_xor_asg ));
  xor2_always  u_xor2_always (.a(a), .b(b), .y(y_xor_alw ));
  xnor2_assign u_xnor2_assign(.a(a), .b(b), .y(y_xnor_asg));
  xnor2_always u_xnor2_always(.a(a), .b(b), .y(y_xnor_alw));

  // Dump file for waveform viewing
  initial begin
    $dumpfile("rtl_gates_2inputs_tb.vcd");
    $dumpvars(0, tb_rtl_gates_2inputs);
  end


  integer i;
  initial begin
    // Test for 2-input gates
    for (i = 0; i < 4; i = i + 1) begin
      {a, b} = i[1:0];
      #5;
    end

    //Test for X and Z
    a = 1'bx; b = 1'b0; #5;
    a = 1'b1; b = 1'bx; #5;
    a = 1'bz; b = 1'b1; #5;
    a = 1'b0; b = 1'bz; #5;
    
    // Test for 1-bit NOT
    a1 = 0; #5;
    a1 = 1; #5;
    a1 = 1'bx; #5;
    a1 = 1'bz; #5;
    a1 = 0; #5;    

    $finish;
  end

endmodule
