`timescale 1ns/1ps
//Not gate
module not1_assign(input  wire a, output wire y);
  assign y = ~a;
endmodule

module not1_always(input wire a, output reg y);
  always @* y = ~a;
endmodule

//AND gate
module and2_assign(input  wire a, b, output wire y);
  assign y = a & b;
endmodule

module and2_always(input wire a, b, output reg y);
  always @* y = a & b;
endmodule

//OR gate
module or2_assign(input  wire a, b, output wire y);
  assign y = a | b;
endmodule

module or2_always(input wire a, b, output reg y);
  always @* y = a | b;
endmodule

//NAND Gate
module nand2_assign(input  wire a, b, output wire y);
  assign y = ~(a & b);
endmodule

module nand2_always(input wire a, b, output reg y);
  always @* y = ~(a & b);
endmodule

//NOR gate
module nor2_assign(input  wire a, b, output wire y);
  assign y = ~(a | b);
endmodule

module nor2_always(input wire a, b, output reg y);
  always @* y = ~(a | b);
endmodule

//XOR gate
module xor2_assign(input  wire a, b, output wire y);
  assign y = a ^ b;
endmodule

module xor2_always(input wire a, b, output reg y);
  always @* y = a ^ b;
endmodule

//XNOR gate
module xnor2_assign(input  wire a, b, output wire y);
  assign y = ~(a ^ b);
endmodule

module xnor2_always(input wire a, b, output reg y);
  always @* y = ~(a ^ b);
endmodule
