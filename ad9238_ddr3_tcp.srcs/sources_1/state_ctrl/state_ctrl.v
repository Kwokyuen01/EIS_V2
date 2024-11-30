/////////////////////////////////////////////////////////////////////////////////
// Company       : �人о·��Ƽ����޹�˾
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2019/05/01 00:00:00
// Module Name   : state_ctrl
// Description   : ADC�ɼ�����DDR3�������ڷ���״̬����ģ��
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module state_ctrl(
	input clk,
	input reset,
	
	input start_sample, //ADC�����ɼ���־�ź�
	input [31:0]set_sample_num,//��Ҫ�ɼ���������32λ��4G
	
	input rdfifo_empty, //DDR˫�˿�ģ���FIFOΪ�ձ�־�ź�
	input [15:0]rdfifo_dout, //��DDR�ж�����16λ����
	input wrfifo_full,  //DDRдFIFOΪ����־�ź�
	
    input adc_data_en,  //ADC�������ʹ���ź�
    
	//wrfifo_clr����������������֤wrfifo�������źŵ���Ч������
	output reg wrfifo_clr,  //DDR˫�˿�ģ���дFIFO����ź�
	output reg rdfifo_clr,  //DDR˫�˿�ģ��Ķ�FIFO����ź�
	output reg rdfifo_rden, //DDR˫�˿�ģ��Ķ�ʹ���ź�
	
    output reg ad_sample_en,   //ADC����ʹ�ܱ�־�ź�
	output reg eth_fifo_wrreq, //��̫������fifo_tx��д�����ź�
	output reg [15:0]eth_fifo_wrdata    //��Ҫ����̫������fifo_tx��д�������
);
	//*//״̬����״̬��λ��Ϊ[3:0]Ҳ����
	reg [4:0]state;
	//ͳ��ADC��DDR���͵����ݣ���set_sample_numλ����ͬ
	reg [31:0]adc_sample_cnt;
	//ͳ�������ڷ���ADC���ݵĸ�������set_sample_numλ��һ��
	reg [31:0]send_data_cnt;
	//��start_sample_rm���в�����������ֻ��IDLE״̬���й�����Ч������״̬����Ч
	reg start_sample_rm;
	/*�·��ź�Ϊдfifo�����״̬�����ͱ��֣�������дfifo����״̬��
	���ȿ�ʼ�������ȱ�֤������ɣ��ٵȴ�wrfifo_full��д��fifo���źţ����ź����ͣ�
	���ͺ󣬱�ʾ������fifo��д�����ݣ���ʱ������һ��״̬������գ���λ��fifo��ʱ��
	fifo��full�źŻ��ߣ�������Ϊ�ڸ�λfifoʱ�ǲ������fifo����д�����ģ���ʹдҲ�ǲ��ɿ��ģ�
	��fifo�ĸ�λ������full�źŻ��ͣ��������fifo����д������
	��д��fifo�Ŀ����ź����ɼ�����(��ǰ3������ֵ����������ź�����)����3��ʱ�����ڵĸߵ�ƽ����*/
    reg [4:0]wrfifo_clr_cnt;
/*�·��ź�Ϊ��fifo�����״̬�����ͱ��֣��������fifo����״̬��
���ȿ�ʼ�������ȱ�֤������ɣ��ٵȴ�rdfifo_empty������fifo�Ŀ��źţ��ź����ͣ�
���ͺ󣬱�ʾfifo���Ѿ��б�д�����ݣ���ʱ������һ��״̬�����(��λ)fifo��ʱ��
fifo��empty�źŻ��ߣ�������Ϊ�ڸ�λfifoʱ�ǲ������fifo���ж������ģ���ʹ��Ҳ�ǲ��ɿ��ģ�
��fifo�ĸ�λ������fifo��д�����ݺ�empty�źŻ��ͣ��������fifo���ж�������
�����fifo�Ŀ����ź����ɼ�����(��ǰ3������ֵ����������ź�����)����3��ʱ�����ڵĸߵ�ƽ����*/	
    reg [4:0]rdfifo_clr_cnt;
    reg [31:0] data_num;

//   localparam IDLE                   = 4'd0;   //����״̬
//   localparam DDR_WR_FIFO_CLEAR      = 4'd1;   //DDRдFIFO���״̬
//   localparam ADC_SAMPLE             = 4'd2;   //ADC��������״̬
//   localparam DDR_RD_FIFO_CLEAR      = 4'd3;   //DDR��FIFO���״̬
//   localparam DATA_SEND_START        = 4'd4;   //���ݷ���״̬
//   localparam DATA_SEND_WORKING      = 4'd5;   //���ݷ������״̬

   localparam IDLE                   = 3'b001;   //����״̬
   localparam DDR_WR_FIFO_CLEAR      = 3'b010;   //DDRдFIFO���״̬
   localparam ADC_SAMPLE             = 3'b100;   //ADC��������״̬  
    
	always@(posedge clk or posedge reset)
	if(reset)begin
		state<=IDLE;
		data_num <= 32'd0;
//		rdfifo_rden <= 1'd0;
	end
	else 
    case(state)
		IDLE: //0
        begin
            if(start_sample_rm) begin   //DDR��ʼ����ɲ��Ҳ������������ź�
               state <= DDR_WR_FIFO_CLEAR; //����дFIFO���״̬
            end
            else begin
               state <= state;
            end
        end
        
        DDR_WR_FIFO_CLEAR://1  
        begin
            if(!wrfifo_full && (wrfifo_clr_cnt==9))
                state<=ADC_SAMPLE;
            else
                state<=state;
        end
        
        ADC_SAMPLE://2
        begin
            if((adc_sample_cnt>=set_sample_num-1'b1)&& adc_data_en)   
                state<=IDLE;
            else
                state<=state;
        end
        
//        DDR_RD_FIFO_CLEAR://3
//        begin
//            if(!rdfifo_empty && (rdfifo_clr_cnt==9))begin
//                state<=DATA_SEND_START;
//            end
//            else
//                state<=state;
//            end
         
//        DATA_SEND_START://4
//        begin
//            state <= DATA_SEND_WORKING;
//            rdfifo_rden <= 1'b1;
//        end
        
//        DATA_SEND_WORKING://5
//        begin
//            if(send_data_cnt >= set_sample_num-1'b1) begin //DDR�д洢������ȫ������
//                rdfifo_rden <= 1'b0;
//                state <= IDLE;
//            end
//            else begin
//                rdfifo_rden <= 1'b1;
//                state <= DATA_SEND_WORKING;
//            end
//        end  
     
        default: state <= IDLE;  
    endcase

//    reg rdfifo_rden_pre;
//    always@(posedge clk)
//        rdfifo_rden_pre <= rdfifo_rden;

//    always@(posedge clk or posedge reset)
//    if(reset) begin
//        eth_fifo_wrreq <= 1'b0;
//        eth_fifo_wrdata <= 'd0;
//    end
//    else if(rdfifo_rden_pre) begin
//        eth_fifo_wrreq <= 1'b1;
//        eth_fifo_wrdata <= rdfifo_dout;
//    end
//    else begin
//        eth_fifo_wrreq <= 1'b0;
//        eth_fifo_wrdata <= 'd0;
//    end
  
	always@(posedge clk or posedge reset)begin  //��start_sample������ʼλ���мĴ棬ͬʱ�޶���ֻ������״̬IDLE
	if(reset)
		start_sample_rm <= 1'b0;
	else if(state==IDLE)
		start_sample_rm <= start_sample;
	else 
		start_sample_rm <= 1'b0;
	end

	always@(posedge clk or posedge reset)begin//*//���DDRдFIFO�ļ�������10�ĺ�ָ��״̬����ת
	if(reset)
		wrfifo_clr_cnt<=0;
	else if(state==DDR_WR_FIFO_CLEAR)//�����������fifo״̬
	begin 
		if(wrfifo_clr_cnt==9)
			wrfifo_clr_cnt<=5'd9;
		else
			wrfifo_clr_cnt<=wrfifo_clr_cnt+1'b1;
	end
	else
		wrfifo_clr_cnt<=5'd0;
	end
	
//*//��ʼ���ɹ��󣬽���һ����fifo
//*���������DDR_WR_FIFO_CLEAR״̬������wrfifo_clr_cntΪ0,1��2ʱ����дfifo��1������wrfifo_clrΪ0*//
	always@(posedge clk or posedge reset)begin
	if (reset)
		wrfifo_clr<=0;
	else if(state==DDR_WR_FIFO_CLEAR)
        begin
            if(wrfifo_clr_cnt==0||wrfifo_clr_cnt==1||wrfifo_clr_cnt==2)
                wrfifo_clr<=1'b1;
            else
                wrfifo_clr<=1'b0;
        end
	else 
		wrfifo_clr<=1'b0;
	end
	
    always@(posedge clk or posedge reset)begin
    if(reset)
      ad_sample_en<=0;
    else if(state==ADC_SAMPLE)
      ad_sample_en<=1;
    else
      ad_sample_en<=0;
    end
	
//����//���adc_sample_cnt��ADC_SAMPLE״̬����ÿ��ʱ�������Լ�1
	always@(posedge clk or posedge reset)begin  
    if(reset)                                  
		adc_sample_cnt<=1'b0;
    else if(state==ADC_SAMPLE)begin
        if(adc_data_en)
		adc_sample_cnt<=adc_sample_cnt+1'b1;
		else
		adc_sample_cnt<=adc_sample_cnt;
	end
    else
		adc_sample_cnt<=1'b0;
	end

////����//���DDR��FIFO�ļ�������10�ĺ�ָ��״̬����ת
//	always@(posedge clk or posedge reset)begin
//    if(reset)
//		rdfifo_clr_cnt<=0;
//    else if(state==DDR_RD_FIFO_CLEAR)//�����������fifo״̬
//    begin 
//		if(rdfifo_clr_cnt==9)
//			rdfifo_clr_cnt<=5'd9;
//		else
//			rdfifo_clr_cnt<=rdfifo_clr_cnt+1'b1;
//    end
//    else
//		rdfifo_clr_cnt<=5'd0;
//	end

//	always@(posedge clk or posedge reset)begin
//    if (reset)
//		rdfifo_clr<=0;
//    else if(state==DDR_RD_FIFO_CLEAR)
//    begin
//		if(rdfifo_clr_cnt==0||rdfifo_clr_cnt==1||rdfifo_clr_cnt==2)
//			rdfifo_clr<=1'b1;
//     else
//			rdfifo_clr<=1'b0;
//    end
//    else 
//		rdfifo_clr<=1'b0;
//	end
	
///*ÿ��send_data_cnt��rdfifo_rdenΪ1��״̬�¼�1��
//   ����rdfifo_rdenΪ����������һ�ģ�
//   ��֤��ÿ�ζ�16bit��ʱsend_data_cntֻ������1*/
//  always@(posedge clk or posedge reset)begin
//  if(reset)
//    send_data_cnt<=32'd0;
//  else if(state==IDLE)
//    send_data_cnt<=32'd0;
//  else if(rdfifo_rden)
//    send_data_cnt<=send_data_cnt+1;
//  else 
//    send_data_cnt<=send_data_cnt;
//  end
endmodule