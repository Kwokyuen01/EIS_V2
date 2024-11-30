`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/13 11:28:29
// Design Name: 
// Module Name: ad9238_ctrl
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


module ad9238_ctrl(
    input clk_50M,
    input reset_n,
    input ad_sample_en,
    input [1:0]ChannelSel,
    input [31:0]ADC_Speed_Set,
    input [11:0] ad_in1,
    input [11:0] ad_in2,

    output adc_data_en,
    output[15:0] ad_out,
    output ad_out_valid
);
    speed_ctrl speed_ctrl(
        .clk(clk_50M),
        .reset_n(reset_n),
        .ad_sample_en(ad_sample_en),
        .adc_data_en(adc_data_en),
        .div_set(ADC_Speed_Set)
    ); 

   ad9238_12bit_to_16bit ad9238_12bit_to_16bit
   (
         .clk   (clk_50M ),
         .ad_sample_en(ad_sample_en),
         .ch_sel(ChannelSel ),
         .ad_in1(ad_in1     ),
         .ad_in2(ad_in2     ),
         .ad_out(ad_out     ),
         .ad_out_valid(ad_out_valid)    
   );
endmodule
