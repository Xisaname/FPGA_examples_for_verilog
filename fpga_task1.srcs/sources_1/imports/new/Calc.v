`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 04:20:31 PM
// Design Name: 
// Module Name: Calc
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


module Calc#(
    parameter GE_DATA_WIDTH=8,//表示接收到产生的DATA的数据宽度
    parameter AN_DATA_WIDTH=32,//表示要存入BRAM用于计算的数据的宽度
    parameter DATA_FRAME_LENGTH = 16//数据帧长度
)(
    input CLK,
    input RST,
    input EN,
    input is_ok,
    input [AN_DATA_WIDTH-1:0] data_reg,
    input [5:0] addr,
    output reg [3:0]read_addr,
    output reg [AN_DATA_WIDTH-1:0] average
    );

    reg [4:0] count;
    reg [AN_DATA_WIDTH+1:0] sum;
    reg [3:0]read_addr;
    reg is_ok_reg;


//初始化
    always@(posedge RST)
    begin
        count<=0;
        sum<=0;
        read_addr<=0;
    end

//计数
    always@(posedge CLK)
    begin
        is_ok_reg<=is_ok;
        if(is_ok_reg==0)
            count<=0;
        else
            count<=count+1;
    end

//取数据
    always@(posedge CLK)
    begin
        if(is_ok_reg)
        begin
            if(count==0)
                read_addr<=addr[5-:4];
            else if(count<4)
                read_addr<=read_addr+1;
            else if(count==4)
                read_addr<=addr[5-:4];
        end
    end

//计算
    always@(posedge CLK)
    begin
        if(is_ok_reg)
        begin
            if(count>3&&count<8)
                sum<=sum+data_reg;
            else if(count==8)
            begin
                average<=sum;
                sum<=0;
            end
        end
    end


endmodule
