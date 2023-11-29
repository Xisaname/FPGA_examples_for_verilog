`timescale 1ns / 1ps


module Analyze#(
    parameter GE_DATA_WIDTH=8,//表示接收到产生的DATA的数据宽度
    parameter AN_DATA_WIDTH=32,//表示要存入BRAM用于计算的数据的宽度
    parameter DATA_FRAME_LENGTH = 16//数据帧长度
)(
    input wire CLK,
    input wire RST,
    input wire EN,
    input wire [3:0]read_addr,
    input wire [1:0]Flag,
    input wire [GE_DATA_WIDTH-1:0]Data,
    input wire Valid,
    output reg is_ok,
    output reg [AN_DATA_WIDTH-1:0] data_out,
    output reg [5:0]addr
    );

    reg [1:0] flag_reg;//暂存flag，由于flag比data早一个时钟周期到达，因此必须暂存
    reg [GE_DATA_WIDTH-1:0] checksum;//计算校验和
    reg wea,web;//两端口写使能信号
    reg [5:0] addra,addrb;//两端口地址，当写使能信号为高位时，该地址用作写地址；为地位时用作读地址。
    reg [7:0] dina,dinb;//两端口写入数据通道
    wire [31:0] douta,doutb;//两端口读取数据通道
    reg switch;//乒乓切换信号，为0时表示A写B读，为1时表示A读B写
    reg [5:0] count;//计数

    blk_mem_gen_0 your_instance_name (
        .clka(CLK),    // input wire clka
        .wea(wea),      // input wire [0 : 0] wea
        .addra(addra),  // input wire [5 : 0] addra
        .dina(dina),    // input wire [7 : 0] dina
        .douta(douta),  // output wire [31 : 0] douta
        .clkb(CLK),    // input wire clkb
        .web(web),      // input wire [0 : 0] web
        .addrb(addrb),  // input wire [5 : 0] addrb
        .dinb(dinb),    // input wire [7 : 0] dinb
        .doutb(doutb)  // output wire [31 : 0] doutb
    );

//初始化
    always@(posedge RST)
    begin
        count<=0;
        switch<=0;
        checksum<=0;
    end

// 校验、状态切换和通知
    always@(posedge CLK)
    begin
        if(Valid)
        begin
            if(count%2==1&&count<33)
            begin
                checksum<=checksum+Data;
                is_ok<=0;
            end
            else if(count==33)
            begin
                checksum<=0;
                if(checksum==Data)
                begin
                    is_ok<=1;
                    switch<=switch+1;//通过校验，此时数据也已经完全写入，进行乒乓切换
                    if(switch==0)
                        addr<=0;
                    else
                        addr<=DATA_FRAME_LENGTH;
                end
            end
        end
    end

// 计数
    always@(posedge CLK)
    begin
        if(Flag==0&&count!=1)
            count<=1;
        else if(Valid==1)
            count<=count+1;
    end


// 写数据
    always@(posedge CLK)
    begin
        if(Valid)
        begin
            if(switch==0)
            begin
                if(count%2==1&&count<33)
                begin
                    wea<=1;
                    dina<=Data;
                    addra<=count/2;
                end
                else if(count==33)
                begin
                    addra<=0;
                    wea<=0;
                end
            end
            else
            begin
                if(count%2==1&&count<33)
                begin
                    web<=1;
                    dinb<=Data;
                    addrb<=count/2+DATA_FRAME_LENGTH;
                end
                else if(count==33)
                begin
                    addrb<=DATA_FRAME_LENGTH;
                    web<=0;
                end
            end
        end
    end

// 读数据，开放给calc的接口
    always@(posedge CLK)
    begin
        if(switch==0)
        begin
            addrb<={read_addr,2'b00};
            data_out<=doutb;
        end
        else
        begin
            addra<={read_addr,2'b00};
            data_out<=douta;
        end
    end


endmodule
