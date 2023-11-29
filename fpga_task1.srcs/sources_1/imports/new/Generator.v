`timescale 1ns / 1ps

module Generator(
    output reg [1:0] Flag,
    output reg [7:0] Data,
    output reg Valid,
    input wire CLK,
    input wire RST,
    input wire EN
  );

  parameter DATA_FRAME_LENGTH = 16;//数据帧长度
  parameter DATA_LENGTH = 8;//数据长度
  parameter BLOCK_DELAY = 160;//帧内随机延时可以用来模拟数据拥塞，概率设置为1/BLOCK_DELAY
  parameter DELAY_MAX = 100;

  //定义中间值
  reg valid_reg;
  reg [DATA_LENGTH-1:0] checksum;
  reg [DATA_LENGTH-1:0] is_block;
  reg [6:0] random_delay_count;

  //传入fifo
  reg [DATA_LENGTH-1:0] data_to_fifo;
  reg [DATA_LENGTH-1:0] random_data;
  reg [5:0] delay_count;
  reg [1:0] flag_reg;
  reg [DATA_LENGTH-1:0] data_reg;
  reg w_en;
  reg r_en;

  //返回fifo状态和数据
  wire empty;
  wire full;
  reg [5:0] read_count;
  wire [7:0] fifo_data_out;

  fifo_generator_0 data_store (
  .clk(CLK),                  // input wire clk
  .srst(RST),                // input wire srst
  .din(data_to_fifo),                  // input wire [7 : 0] din
  .wr_en(w_en),              // input wire wr_en
  .rd_en(r_en),              // input wire rd_en
  .dout(fifo_data_out),                // output wire [7 : 0] dout
  .full(full),                // output wire full
  .empty(empty),              // output wire empty
  .wr_rst_busy(),  // output wire wr_rst_busy
  .rd_rst_busy()  // output wire rd_rst_busy
);

//初始化参数
always @(posedge RST) 
begin
  delay_count<=0;
  checksum<=0;
  w_en<=0;
  read_count<=0;
  random_delay_count<=0;
  valid_reg<=1;
end

//生成随机数据
always@(posedge CLK)
begin
  random_data<=$random;
end

//计数，每隔34个周期数据有效
always@(posedge CLK)
begin
  if(delay_count==((DATA_FRAME_LENGTH+1)*3))
    delay_count<=0;
  else
    delay_count<=delay_count+1;
end


//reg赋值
always@(posedge CLK)
begin
  if(delay_count<((DATA_FRAME_LENGTH+1)*2))//数据有效
  begin
    case(delay_count)
      0:begin
        flag_reg<=0;
        data_reg<=random_data;
        end
      (2*DATA_FRAME_LENGTH):
        flag_reg<=2;
      ((2*DATA_FRAME_LENGTH)+1):begin
        data_reg<=checksum;
        checksum<=0;
        end
      default:begin
        flag_reg<=1;
        data_reg<=random_data;
        end
    endcase
  end
end


//在delay_count为奇数时计算checksum
always@(posedge CLK)
begin
  if(delay_count<(2*DATA_FRAME_LENGTH)&&delay_count%2)
    checksum<=checksum+random_data;
end

/*
* 写入fifo
* 注意，数据是从data_reg取值的，reg需要一个周期来写值，因此要多出一个周期来赋值
* delay_count为1时输入0代表之后的data是第一个data，为(2*DATA_FRAME_LENGTH)+1时代表之后的data是checksum
* 当delay_count为奇数时，把flag值传给fifo，为偶数时把data传给fifo
*/
always@(posedge CLK)
begin
  if(delay_count<(2*DATA_FRAME_LENGTH+3)&&!full&&delay_count)//数据有效且fifo不满
  begin
    w_en<=1;
    if(delay_count%2)
      data_to_fifo<=flag_reg;
    else
      data_to_fifo<=data_reg;
  end
  else
    w_en<=0;
end


//帧内随机延时
always@(posedge CLK)
begin
  is_block<=$random%BLOCK_DELAY;
  if(!is_block)
    random_delay_count<=$random%DELAY_MAX;
end

//设置read_count
always@(posedge CLK)
begin
  if(!empty)
    read_count<=read_count+1;
  else
    read_count<=0;
end

//读取数据
always@(posedge CLK)
begin
  if(EN)
  begin
    if(!random_delay_count)
    begin
      r_en<=1;
      if(read_count)
      begin
        if(read_count%2==1)
          Flag<=fifo_data_out;
        else
          Data<=fifo_data_out;
      end
    end
    else
      random_delay_count<=random_delay_count-1;
  end
end

//设置Valid
always@(posedge CLK)
begin
  if(EN)
  begin
    if(!random_delay_count)
    begin
      case(Flag)
      0:begin
        valid_reg<=1;
        Valid<=1;
      end
      1:valid_reg<=1;
      2:begin
          valid_reg<=0;
          Valid<=valid_reg;
        end
      default:Valid<=0;
      endcase
    end
    else
      Valid<=0;
  end
end

endmodule
