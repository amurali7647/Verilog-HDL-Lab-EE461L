module tb_DFFSync;

//Input to design from TB
reg d_r; 		
reg rst_r; 
reg clk_i;

//Output signals from design to TB
wire q_w;


//Instantiate the design
  DFFAsynch DFFSynch2 ( 
  .d_i(d_r),
  .rst_i(rst_r),
  .clk_i(clk_i),
  .q_o(q_w)
); 


  
initial begin
  //Test cases
  #10 d_r = 0; rst_r = 0; 

  #10 d_r = 0; rst_r = 1;

  #10 d_r = 1; rst_r = 0;

  #10 d_r = 1; rst_r = 1; 

  #5 d_r = 0; rst_r = 0;

  #5 d_r= 0; rst_r = 1; 

  #5 d_r= 1; rst_r = 0;
  
  #5 d_r = 1; rst_r = 1; 

end
  
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);			//dump all variables in testbench & design
end
  
initial begin
  clk_i = 0;
  repeat(15) #5 clk_i = ~clk_i;
end

endmodule
