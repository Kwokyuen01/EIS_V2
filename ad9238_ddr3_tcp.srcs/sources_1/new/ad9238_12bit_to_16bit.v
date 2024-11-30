`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/13 10:53:42
// Design Name: 
// Module Name: ad9238_12bit_to_16bit
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


module ad9238_12bit_to_16bit(
  clk,
  ad_sample_en,
  ch_sel,
  ad_in1,
  ad_in2,
  ad_out,
  ad_out_valid
);

  input clk;
  input ad_sample_en;
  input [1:0]ch_sel;
  input[11:0] ad_in1;
  input[11:0] ad_in2;
  output[15:0] ad_out;
  output ad_out_valid;
  reg[15:0] ad_out;
  reg ad_out_valid;
  
  //用于仿真或产生测试数据，可在通过添加`define SIM 进行宏定义
  reg [11:0]adc_test_data;
  //测试数据，当ad_sample_en为1时，锁相环生成的50M时钟每个周期使adc_test_data加1
  always@(posedge clk)
    adc_test_data <= ad_sample_en ? (adc_test_data + 1'b1) : 12'd0;
    
    wire [11:0]s_ad_in1;
	wire [11:0]s_ad_in2;  
	
	assign s_ad_in1 = ad_in1 + 'd2048;
	assign s_ad_in2 = ad_in2 + 'd2048;

  always @(posedge clk)
  if(ad_sample_en && ch_sel == 2'b01)
    ad_out<={4'd0,s_ad_in1};//{{4{ad_in1[11]}},ad_in1};
  else if(ad_sample_en && ch_sel == 2'b10)
    ad_out<={4'd0,s_ad_in2};//{{4{ad_in2[11]}},ad_in2};
  else if(ad_sample_en && ch_sel == 2'b00)
    ad_out<={4'd0,adc_test_data};//{{4{adc_test_data[11]}},adc_test_data};
  else
    ad_out <= 'd0;

  always @(posedge clk)
    ad_out_valid <= ad_sample_en;
    
endmodule
