`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 08:19:47 PM
// Design Name: 
// Module Name: generator_tb
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


module generator_tb();

    reg clk;
    reg rst;
    reg en;
//    wire [1:0] Flag;
//    wire [7:0] Data;
//    wire Valid;
//    wire [31:0] data_reg;
//    reg r_en;
//    wire [5:0]addr;
//    wire [3:0]read_addr;
//    wire [31:0] average;
//    assign read_addr=addr/4;

//     Generator ge_ip(
//         .Flag(Flag),
//         .Data(Data),
//         .Valid(Valid),
//         .CLK(clk),
//         .RST(rst),
//         .EN(en)
//     );

//     Analyze an_ip(
//         .CLK(clk),
//         .RST(rst),
//         .EN(en),
//         .read_addr(read_addr),
//         .is_ok(is_ok),
//         .data_out(data_reg),
//         .addr(addr)
//     );

//        Calc cal(
//         .CLK(clk),
//         .RST(rst),
//         .EN(en),
//         .average(average)
//        );

        Top_model sub_top(
            .CLK(clk),
            .RST(rst),
            .EN(en)
        );

    always #5 clk=~clk;

    initial begin
        clk=1'b0;
        rst=1'b1;
        en=1'b0;

        #10
        rst=1'b0;
        
        #5
        en=1'b1;

    end

endmodule
