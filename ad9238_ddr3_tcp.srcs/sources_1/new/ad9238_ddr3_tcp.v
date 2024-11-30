/////////////////////////////////////////////////////////////////////////////////
// Company       : 武汉芯路恒科技有限公司
//                 http://xiaomeige.taobao.com
// Web           : http://www.corecourse.cn
// 
// Create Date   : 2021/10/20 00:00:00
// Module Name   : ad9238_ddr3_tcp
// Description   : ad9238采集数据，PS端DDR3缓存,TCP发送
// 
// Dependencies  : 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////
module ad9238_ddr3_tcp(
  //ACMad9238模块接口信号
  input [11:0]     ad_in1           ,
  input [11:0]     ad_in2           ,  
  output          ad_clk1          ,
  output          ad_clk2          ,
  //LED
  output          led              ,
  input           reset_n          ,
  //DDR3 Interface
  // Inouts
  inout  [31:0]   ddr3_dq          ,
  inout  [3:0]    ddr3_dqs_n       ,
  inout  [3:0]    ddr3_dqs_p       ,
  // Outputs      
  output [14:0]   ddr3_addr        ,
  output [2:0]    ddr3_ba          ,
  output          ddr3_ras_n       ,
  output          ddr3_cas_n       ,
  output          ddr3_we_n        ,
  output          ddr3_reset_n     ,
  output [0:0]    ddr3_ck_p        ,
  output [0:0]    ddr3_ck_n        ,
  output [0:0]    ddr3_cke         ,
  output [0:0]    ddr3_cs_n        ,
  output [3:0]    ddr3_dm          ,
  output [0:0]    ddr3_odt         ,
  inout           FIXED_IO_ddr_vrn ,
  inout           FIXED_IO_ddr_vrp ,
  inout [53:0]    FIXED_IO_mio     ,
  inout           FIXED_IO_ps_clk  ,
  inout           FIXED_IO_ps_porb ,
  inout           FIXED_IO_ps_srstb
);

//PL使用DDR的基地址，留一定空间给PS用
parameter DDR_BASE_ADDR = 32'h1800000;

//*********************************
//Internal connect
//*********************************
  //clock
  wire          ps2pl_clk50m_0; //系统时钟输入，50MHz
  wire          ps2pl_resetn_0; //复位信号输入
  wire          pll_locked;
  wire          loc_clk100m;
  wire          reset;
  wire          reset_pre;
  reg  [19:0]   reset_sync;
  //wr_fifo Interface
  wire          wrfifo_clr;
  wire [15:0]   wrfifo_din;
  wire          wrfifo_wren;
  wire          wrfifo_full;
  //rd_fifo Interface
  wire          rdfifo_clr;
  wire          rdfifo_rden;
  wire [15 :0]  rdfifo_dout;
  //axi
  wire [3:0]    s_axi_awid;
  wire [31:0]   s_axi_awaddr;
  wire [7:0]    s_axi_awlen;
  wire [2:0]    s_axi_awsize;
  wire [1:0]    s_axi_awburst;
  wire [0:0]    s_axi_awlock;
  wire [3:0]    s_axi_awcache;
  wire [2:0]    s_axi_awprot;
  wire [3:0]    s_axi_awqos;
  wire [3:0]    s_axi_awregion;
  wire          s_axi_awvalid;
  wire          s_axi_awready;
  //
  wire [63:0]   s_axi_wdata;
  wire [7:0]    s_axi_wstrb;
  wire          s_axi_wlast;
  wire          s_axi_wvalid;
  wire          s_axi_wready;
  //
  wire [3:0]    s_axi_bid;
  wire [1:0]    s_axi_bresp;
  wire          s_axi_bvalid;
  wire          s_axi_bready;
  //
  wire [3:0]    s_axi_arid;
  wire [31:0]   s_axi_araddr;
  wire [7:0]    s_axi_arlen;
  wire [2:0]    s_axi_arsize;
  wire [1:0]    s_axi_arburst;
  wire [0:0]    s_axi_arlock;
  wire [3:0]    s_axi_arcache;
  wire [2:0]    s_axi_arprot;
  wire [3:0]    s_axi_arqos;
  wire [3:0]    s_axi_arregion;
  wire          s_axi_arvalid;
  wire          s_axi_arready;
  //
  wire [3:0]    s_axi_rid;
  wire [63:0]   s_axi_rdata;
  wire [1:0]    s_axi_rresp;
  wire          s_axi_rlast;
  wire          s_axi_rvalid;
  wire          s_axi_rready;
  //
  wire          s_axi_aclk;
  wire          s_axi_resetn;
  wire          clk_50M;
  //write/read ddr done
  wire          read_ddr_done;
  wire          write_ddr_done;
  
  assign led = {pll_locked};
//  assign eth_reset = 'b1;
  
  assign s_axi_aclk        = loc_clk100m;
  assign s_axi_resetn      = pll_locked;
  
  assign ad_clk1 = ~clk_50M;
  assign ad_clk2 = ~clk_50M;
  wire          pl_reset_n;

  assign pl_reset_n = ps2pl_resetn_0 & reset_n;
  assign reset_pre     = ~pll_locked;
  //PS先释放复位，PL的逻辑复位释放往后延迟20个时钟周期
  always@(posedge loc_clk100m or posedge reset_pre)
  begin
    if(reset_pre)
      reset_sync <= {20{1'b1}};
    else
      reset_sync <= reset_sync << 1;
  end

  assign reset = reset_sync[19];


  pll pll
  (
    // Clock out ports
    .clk_out1 (loc_clk100m     ), // output clk_out1
    .clk_out2 (clk_50M         ),
    // Status and control signals
    .resetn   (pl_reset_n), // input reset
    .locked   (pll_locked      ), // output locked
    // Clock in ports
    .clk_in1  (ps2pl_clk50m_0  )  // input clk_in1
  );
  
  parameter local_mac = 48'h00_0a_35_01_fe_c0;
  parameter local_ip = 32'hc0_a8_00_02;
  parameter local_port = 16'd5000;

  wire [1:0]ChannelSel;
  wire [31:0]DataNum;
  wire [31:0]ADC_Speed_Set;   
  wire RestartReq;
  wire sample_en;
  wire clk125m_o;
  
  //ad1030_10bit_to_16bit
  wire [15:0]ad_out;
  wire ad_out_valid;
  
  //fifotx
  wire rdfifo_empty;
  wire eth_fifo_wrreq;
  wire [15:0] eth_fifo_wrdata;
  wire eth_fifo_tx_empty;
  wire [9:0] eth_fifo_usedw;
  wire [14:0]rd_data_count;
  wire	adc_data_en;
  wire ad_sample_en;
   	
    ad9238_ctrl ad9238_ctrl(
        .clk_50M(clk_50M),
        .reset_n(!reset),
        .ad_sample_en(ad_sample_en),
        .ChannelSel(ChannelSel),
        .ADC_Speed_Set(ADC_Speed_Set),
        .ad_in1(ad_in1),
        .ad_in2(ad_in2),
        
        .adc_data_en(adc_data_en),
        .ad_out(ad_out),
        .ad_out_valid(ad_out_valid)
    );

   //状态机
   state_ctrl state_ctrl(
          .clk(clk_50M),
          .reset(reset),
          .start_sample(RestartReq), //ADC启动采集标志信号
          .set_sample_num(DataNum),//需要采集的数量，32位，4G
          .rdfifo_empty(rdfifo_empty), //DDR双端口模块读FIFO为空标志信号
          .rdfifo_dout(rdfifo_dout), //从DDR中读出的16位数据
          .wrfifo_full(wrfifo_full),  //DDR写FIFO为满标志信号
          .adc_data_en(adc_data_en),  //ADC输出数据使能信号
          .wrfifo_clr(wrfifo_clr),  //DDR双端口模块的写FIFO清除信号
          .rdfifo_clr(rdfifo_clr),  //DDR双端口模块的读FIFO清除信号
          .rdfifo_rden(rdfifo_rden), //DDR双端口模块的读使能信号
          .ad_sample_en(ad_sample_en),   //ADC采样使能标志信号
          .eth_fifo_wrreq(eth_fifo_wrreq), //以太网发送fifo_tx的写请求信号
          .eth_fifo_wrdata(eth_fifo_wrdata)    //需要以太网发送fifo_tx中写入的数据
    );

  fifo_axi4_adapter #(
    .FIFO_DW                (16                   ),
    .WR_ENDIAN_MODE         (1                   ),
    .AXI_DATA_WIDTH         (64                   ),
    .AXI_ADDR_WIDTH         (32                   ),
    .AXI_ID                 (4'b0000              ),
    .AXI_BURST_LEN          (8'd31                ),  //axi burst length = 16
    .FIFO_ADDR_DEPTH        (64                   )
  )fifo_axi4_adapter_inst
  (
    //clock reset
    .clk                 (loc_clk100m         ),
    .reset               (!reset_n            ),
    //read/write address
    .WR_AXI_BYTE_ADDR_BEGIN (DDR_BASE_ADDR  ),
    .WR_AXI_BYTE_ADDR_END   (DDR_BASE_ADDR + DataNum*2 -1'b1),
    .RD_AXI_BYTE_ADDR_BEGIN (DDR_BASE_ADDR  ),
    .RD_AXI_BYTE_ADDR_END   (DDR_BASE_ADDR + DataNum*2 - 1'b1),
    //write/read ddr done
    .write_ddr_done         (write_ddr_done),
    .read_ddr_done          (read_ddr_done),
    //wr_fifo Interface
    .wrfifo_clr          (wrfifo_clr          ),
    .wrfifo_clk          (clk_50M             ),
    .wrfifo_wren         (ad_out_valid && adc_data_en),
    .wrfifo_din          (ad_out              ),
    .wrfifo_full         (wrfifo_full         ),
    .wrfifo_wr_cnt       (                    ),
    //rd_fifo Interface
    .rdfifo_clr          (rdfifo_clr          ),
    .rdfifo_clk          (clk_50M             ),
    .rdfifo_rden         (rdfifo_rden         ),
    .rdfifo_dout         (rdfifo_dout         ),
    .rdfifo_empty        (rdfifo_empty        ),
    .rdfifo_rd_cnt       (                    ),
    // Master Interface Write Address Ports
    .m_axi_awid          (s_axi_awid          ),
    .m_axi_awaddr        (s_axi_awaddr        ),
    .m_axi_awlen         (s_axi_awlen         ),
    .m_axi_awsize        (s_axi_awsize        ),
    .m_axi_awburst       (s_axi_awburst       ),
    .m_axi_awlock        (s_axi_awlock        ),
    .m_axi_awcache       (s_axi_awcache       ),
    .m_axi_awprot        (s_axi_awprot        ),
    .m_axi_awqos         (s_axi_awqos         ),
    .m_axi_awregion      (s_axi_awregion      ),
    .m_axi_awvalid       (s_axi_awvalid       ),
    .m_axi_awready       (s_axi_awready       ),
    // Master Interface Write Data Ports
    .m_axi_wdata         (s_axi_wdata         ),
    .m_axi_wstrb         (s_axi_wstrb         ),
    .m_axi_wlast         (s_axi_wlast         ),
    .m_axi_wvalid        (s_axi_wvalid        ),
    .m_axi_wready        (s_axi_wready        ),
    // Master Interface Write Response Ports
    .m_axi_bid           (4'b0000             ),
    .m_axi_bresp         (s_axi_bresp         ),
    .m_axi_bvalid        (s_axi_bvalid        ),
    .m_axi_bready        (s_axi_bready        ),
    // Master Interface Read Address Ports
    .m_axi_arid          (s_axi_arid          ),
    .m_axi_araddr        (s_axi_araddr        ),
    .m_axi_arlen         (s_axi_arlen         ),
    .m_axi_arsize        (s_axi_arsize        ),
    .m_axi_arburst       (s_axi_arburst       ),
    .m_axi_arlock        (s_axi_arlock        ),
    .m_axi_arcache       (s_axi_arcache       ),
    .m_axi_arprot        (s_axi_arprot        ),
    .m_axi_arqos         (s_axi_arqos         ),
    .m_axi_arregion      (s_axi_arregion      ),
    .m_axi_arvalid       (s_axi_arvalid       ),
    .m_axi_arready       (s_axi_arready       ),
    // Master Interface Read Data Ports
    .m_axi_rid           (4'b0000             ),
    .m_axi_rdata         (s_axi_rdata         ),
    .m_axi_rresp         (s_axi_rresp         ),
    .m_axi_rlast         (s_axi_rlast         ),
    .m_axi_rvalid        (s_axi_rvalid        ),
    .m_axi_rready        (s_axi_rready        )
  );
  
  system_wrapper system_wrapper
  (
    .RestartReq_0        (RestartReq),
    .ADC_Speed_Set_0     (ADC_Speed_Set),
    .ChannelSel_0        (ChannelSel),
    .DataNum_0           (DataNum),
    .write_ddr_done_0    (write_ddr_done),
    .DDR_addr            (ddr3_addr           ),
    .DDR_ba              (ddr3_ba             ),
    .DDR_cas_n           (ddr3_cas_n          ),
    .DDR_ck_n            (ddr3_ck_n           ),
    .DDR_ck_p            (ddr3_ck_p           ),
    .DDR_cke             (ddr3_cke            ),

    .DDR_cs_n            (ddr3_cs_n           ),
    .DDR_dm              (ddr3_dm             ),
    .DDR_dq              (ddr3_dq             ),
    .DDR_dqs_n           (ddr3_dqs_n          ),
    .DDR_dqs_p           (ddr3_dqs_p          ),
    .DDR_odt             (ddr3_odt            ),
    .DDR_ras_n           (ddr3_ras_n          ),
    .DDR_reset_n         (ddr3_reset_n        ),
    .DDR_we_n            (ddr3_we_n           ),
    .FIXED_IO_ddr_vrn    (FIXED_IO_ddr_vrn    ),
    .FIXED_IO_ddr_vrp    (FIXED_IO_ddr_vrp    ),
    .FIXED_IO_mio        (FIXED_IO_mio        ),
    .FIXED_IO_ps_clk     (FIXED_IO_ps_clk     ),
    .FIXED_IO_ps_porb    (FIXED_IO_ps_porb    ),
    .FIXED_IO_ps_srstb   (FIXED_IO_ps_srstb   ),
    .ps2pl_clk50m_0      (ps2pl_clk50m_0      ),
    .ps2pl_resetn_0      (ps2pl_resetn_0      ),
    //Slave Interface Read Address Ports
    .pl2ps_axi_0_araddr  (s_axi_araddr        ),
    .pl2ps_axi_0_arburst (s_axi_arburst       ),
    .pl2ps_axi_0_arcache (s_axi_arcache       ),
    .pl2ps_axi_0_arlen   (s_axi_arlen         ),
    .pl2ps_axi_0_arlock  (s_axi_arlock        ),
    .pl2ps_axi_0_arprot  (s_axi_arprot        ),
    .pl2ps_axi_0_arqos   (s_axi_arqos         ),
//    .pl2ps_axi_0_arregion(s_axi_arregion      ),
    .pl2ps_axi_0_arready (s_axi_arready       ),
    .pl2ps_axi_0_arsize  (s_axi_arsize        ),
    .pl2ps_axi_0_arvalid (s_axi_arvalid       ),
    //Slave Interface Write Address Ports
    .pl2ps_axi_0_awaddr  (s_axi_awaddr        ),
    .pl2ps_axi_0_awburst (s_axi_awburst       ),
    .pl2ps_axi_0_awcache (s_axi_awcache       ),
    .pl2ps_axi_0_awlen   (s_axi_awlen         ),
    .pl2ps_axi_0_awlock  (s_axi_awlock        ),
    .pl2ps_axi_0_awprot  (s_axi_awprot        ),
    .pl2ps_axi_0_awqos   (s_axi_awqos         ),
//    .pl2ps_axi_0_awregion(s_axi_awregion      ),
    .pl2ps_axi_0_awready (s_axi_awready       ),
    .pl2ps_axi_0_awsize  (s_axi_awsize        ),
    .pl2ps_axi_0_awvalid (s_axi_awvalid       ),
    //Slave Interface Write Response Ports
    .pl2ps_axi_0_bready  (s_axi_bready        ),
    .pl2ps_axi_0_bresp   (s_axi_bresp         ),
    .pl2ps_axi_0_bvalid  (s_axi_bvalid        ),
    //Slave Interface Read Data Ports
    .pl2ps_axi_0_rdata   (s_axi_rdata         ),
    .pl2ps_axi_0_rlast   (s_axi_rlast         ),
    .pl2ps_axi_0_rready  (s_axi_rready        ),
    .pl2ps_axi_0_rresp   (s_axi_rresp         ),
    .pl2ps_axi_0_rvalid  (s_axi_rvalid        ),
    //Slave Interface Write Data Ports
    .pl2ps_axi_0_wdata   (s_axi_wdata         ),
    .pl2ps_axi_0_wlast   (s_axi_wlast         ),
    .pl2ps_axi_0_wready  (s_axi_wready        ),
    .pl2ps_axi_0_wstrb   (s_axi_wstrb         ),
    .pl2ps_axi_0_wvalid  (s_axi_wvalid        ),
    //Slave Interface ACLK RESET
    .pl2ps_axi_aclk_0    (s_axi_aclk          ),
    .pl2ps_axi_resetn_0  (s_axi_resetn        )
  );

endmodule