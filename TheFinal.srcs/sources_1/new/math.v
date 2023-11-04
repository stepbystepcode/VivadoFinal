`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/31 20:33:06
// Design Name: 
// Module Name: math
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module math(

    );
endmodule
module full_adder(
    input a,
    input b,
    input c,
    output s,
    output wire  c_out
    );
    assign s = a ^ b ^ c;
    assign c_out = (a & b) | (a & c) | (b & c);
endmodule
//add
module add(
    input [7:0] a,
    input [7:0] b,
    output [7:0] result
    );
    //通过全加器实现
    wire c1,c2,c3,c4,c5,c6,c7;
    full_adder fa0(a[0],b[0],1'b0,result[0],c0);
    full_adder fa1(a[1],b[1],c0,result[1],c1);
    full_adder fa2(a[2],b[2],c1,result[2],c2);
    full_adder fa3(a[3],b[3],c2,result[3],c3);
    full_adder fa4(a[4],b[4],c3,result[4],c4);
    full_adder fa5(a[5],b[5],c4,result[5],c5);
    full_adder fa6(a[6],b[6],c5,result[6],c6);
    full_adder fa7(a[7],b[7],c6,result[7],c7);
endmodule
//sub
module sub(
    input [7:0] a,
    input [7:0] b,
    output [7:0] result
    );
    //通过全加器实现
    wire c1,c2,c3,c4,c5,c6,c7;
    full_adder fa0(a[0],~b[0],1'b1,result[0],c0);
    full_adder fa1(a[1],~b[1],c0,result[1],c1);
    full_adder fa2(a[2],~b[2],c1,result[2],c2);
    full_adder fa3(a[3],~b[3],c2,result[3],c3);
    full_adder fa4(a[4],~b[4],c3,result[4],c4);
    full_adder fa5(a[5],~b[5],c4,result[5],c5);
    full_adder fa6(a[6],~b[6],c5,result[6],c6);
    full_adder fa7(a[7],~b[7],c6,result[7],c7);
endmodule
//右移运算
module right_shift(
    input [7:0] a,
    output [7:0] result
    );
    assign result [6:0] = a [7:1];
    assign result [7] = 1'b0;
endmodule