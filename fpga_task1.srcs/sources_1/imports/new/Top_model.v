`timescale 1ns / 1ps


module Top_model#(
    parameter GE_DATA_WIDTH=8,//表示接收到产生的DATA的数据宽度
    parameter AN_DATA_WIDTH=32,//表示要存入BRAM用于计算的数据的宽度
    parameter DATA_FRAME_LENGTH = 16//数据帧长度
)(
    input CLK,
    input RST,
    input EN
    );
    wire [AN_DATA_WIDTH-1:0] average;
    wire [AN_DATA_WIDTH-1:0] data_reg;
    wire [AN_DATA_WIDTH-1:0] data_to_calc;
    wire [5:0] addr,addr_to_calc;
    wire [3:0] addr_from_calc;
    wire [3:0] read_addr;
    wire ok_to_calc;
    wire is_ok;

    wire [1:0]Flag,flag_to_an;
    wire [GE_DATA_WIDTH-1:0]Data,data_to_an;
    wire Valid,valid_to_an;

    assign ok_to_calc=is_ok;
    assign data_to_calc=data_reg;
    assign read_addr=addr_from_calc;
    assign addr_to_calc=addr;

    assign flag_to_an=Flag;
    assign data_to_an=Data;
    assign valid_to_an=Valid;

    Calc sub_calc(
        .CLK(CLK),
        .RST(RST),
        .EN(EN),
        .is_ok(ok_to_calc),
        .data_reg(data_to_calc),
        .read_addr(addr_from_calc),
        .addr(addr_to_calc),
        .average(average)
    );

    Analyze an_ip(
         .CLK(CLK),
         .RST(RST),
         .EN(EN),
         .Flag(flag_to_an),
         .Data(data_to_an),
         .Valid(valid_to_an),
         .read_addr(read_addr),
         .is_ok(is_ok),
         .data_out(data_reg),
         .addr(addr)
    );

    Generator generator_data(
        .Flag(Flag),
        .Data(Data),
        .Valid(Valid),
        .CLK(CLK),
        .RST(RST),
        .EN(EN)
    );
endmodule
