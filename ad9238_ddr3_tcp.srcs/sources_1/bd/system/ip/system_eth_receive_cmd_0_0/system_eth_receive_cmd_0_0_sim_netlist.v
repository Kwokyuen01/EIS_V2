// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov 28 22:37:48 2024
// Host        : DESKTOP-VU442JP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Project/ad9238_ddr3_tcp/ad9238_ddr3_tcp.srcs/sources_1/bd/system/ip/system_eth_receive_cmd_0_0/system_eth_receive_cmd_0_0_sim_netlist.v
// Design      : system_eth_receive_cmd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_eth_receive_cmd_0_0,eth_receive_cmd_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "eth_receive_cmd_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_eth_receive_cmd_0_0
   (write_ddr_done,
    ChannelSel,
    DataNum,
    ADC_Speed_Set,
    RestartReq,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input write_ddr_done;
  output [1:0]ChannelSel;
  output [31:0]DataNum;
  output [31:0]ADC_Speed_Set;
  output RestartReq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [31:0]ADC_Speed_Set;
  wire [1:0]ChannelSel;
  wire [31:0]DataNum;
  wire RestartReq;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire write_ddr_done;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0 inst
       (.ADC_Speed_Set(ADC_Speed_Set),
        .ChannelSel(ChannelSel),
        .DataNum(DataNum),
        .RestartReq(RestartReq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .write_ddr_done(write_ddr_done));
endmodule

(* ORIG_REF_NAME = "cmd_rx" *) 
module system_eth_receive_cmd_0_0_cmd_rx
   (RestartReq,
    ChannelSel,
    DataNum,
    ADC_Speed_Set,
    RestartReq_reg_0,
    s00_axi_aclk,
    SR,
    Q,
    \ChannelSel_reg[1]_0 ,
    \ChannelSel_reg[1]_1 ,
    cmdvalid,
    E,
    \ADC_Speed_Set_reg[31]_0 );
  output RestartReq;
  output [1:0]ChannelSel;
  output [31:0]DataNum;
  output [31:0]ADC_Speed_Set;
  input RestartReq_reg_0;
  input s00_axi_aclk;
  input [0:0]SR;
  input [31:0]Q;
  input [1:0]\ChannelSel_reg[1]_0 ;
  input \ChannelSel_reg[1]_1 ;
  input cmdvalid;
  input [0:0]E;
  input [0:0]\ADC_Speed_Set_reg[31]_0 ;

  wire [31:0]ADC_Speed_Set;
  wire [0:0]\ADC_Speed_Set_reg[31]_0 ;
  wire [1:0]ChannelSel;
  wire \ChannelSel[0]_i_1_n_0 ;
  wire \ChannelSel[1]_i_1_n_0 ;
  wire [1:0]\ChannelSel_reg[1]_0 ;
  wire \ChannelSel_reg[1]_1 ;
  wire [31:0]DataNum;
  wire [0:0]E;
  wire [31:0]Q;
  wire RestartReq;
  wire RestartReq_reg_0;
  wire [0:0]SR;
  wire cmdvalid;
  wire s00_axi_aclk;

  FDCE \ADC_Speed_Set_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[0]),
        .Q(ADC_Speed_Set[0]));
  FDCE \ADC_Speed_Set_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[10]),
        .Q(ADC_Speed_Set[10]));
  FDCE \ADC_Speed_Set_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[11]),
        .Q(ADC_Speed_Set[11]));
  FDCE \ADC_Speed_Set_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[12]),
        .Q(ADC_Speed_Set[12]));
  FDCE \ADC_Speed_Set_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[13]),
        .Q(ADC_Speed_Set[13]));
  FDCE \ADC_Speed_Set_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[14]),
        .Q(ADC_Speed_Set[14]));
  FDCE \ADC_Speed_Set_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[15]),
        .Q(ADC_Speed_Set[15]));
  FDCE \ADC_Speed_Set_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[16]),
        .Q(ADC_Speed_Set[16]));
  FDCE \ADC_Speed_Set_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[17]),
        .Q(ADC_Speed_Set[17]));
  FDCE \ADC_Speed_Set_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[18]),
        .Q(ADC_Speed_Set[18]));
  FDCE \ADC_Speed_Set_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[19]),
        .Q(ADC_Speed_Set[19]));
  FDCE \ADC_Speed_Set_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[1]),
        .Q(ADC_Speed_Set[1]));
  FDCE \ADC_Speed_Set_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[20]),
        .Q(ADC_Speed_Set[20]));
  FDCE \ADC_Speed_Set_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[21]),
        .Q(ADC_Speed_Set[21]));
  FDCE \ADC_Speed_Set_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[22]),
        .Q(ADC_Speed_Set[22]));
  FDCE \ADC_Speed_Set_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[23]),
        .Q(ADC_Speed_Set[23]));
  FDCE \ADC_Speed_Set_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[24]),
        .Q(ADC_Speed_Set[24]));
  FDCE \ADC_Speed_Set_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[25]),
        .Q(ADC_Speed_Set[25]));
  FDCE \ADC_Speed_Set_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[26]),
        .Q(ADC_Speed_Set[26]));
  FDCE \ADC_Speed_Set_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[27]),
        .Q(ADC_Speed_Set[27]));
  FDCE \ADC_Speed_Set_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[28]),
        .Q(ADC_Speed_Set[28]));
  FDCE \ADC_Speed_Set_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[29]),
        .Q(ADC_Speed_Set[29]));
  FDCE \ADC_Speed_Set_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[2]),
        .Q(ADC_Speed_Set[2]));
  FDCE \ADC_Speed_Set_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[30]),
        .Q(ADC_Speed_Set[30]));
  FDCE \ADC_Speed_Set_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[31]),
        .Q(ADC_Speed_Set[31]));
  FDCE \ADC_Speed_Set_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[3]),
        .Q(ADC_Speed_Set[3]));
  FDCE \ADC_Speed_Set_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[4]),
        .Q(ADC_Speed_Set[4]));
  FDCE \ADC_Speed_Set_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[5]),
        .Q(ADC_Speed_Set[5]));
  FDCE \ADC_Speed_Set_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[6]),
        .Q(ADC_Speed_Set[6]));
  FDCE \ADC_Speed_Set_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[7]),
        .Q(ADC_Speed_Set[7]));
  FDCE \ADC_Speed_Set_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[8]),
        .Q(ADC_Speed_Set[8]));
  FDCE \ADC_Speed_Set_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ADC_Speed_Set_reg[31]_0 ),
        .CLR(SR),
        .D(Q[9]),
        .Q(ADC_Speed_Set[9]));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \ChannelSel[0]_i_1 
       (.I0(Q[0]),
        .I1(\ChannelSel_reg[1]_0 [0]),
        .I2(\ChannelSel_reg[1]_1 ),
        .I3(\ChannelSel_reg[1]_0 [1]),
        .I4(cmdvalid),
        .I5(ChannelSel[0]),
        .O(\ChannelSel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \ChannelSel[1]_i_1 
       (.I0(Q[1]),
        .I1(\ChannelSel_reg[1]_0 [0]),
        .I2(\ChannelSel_reg[1]_1 ),
        .I3(\ChannelSel_reg[1]_0 [1]),
        .I4(cmdvalid),
        .I5(ChannelSel[1]),
        .O(\ChannelSel[1]_i_1_n_0 ));
  FDCE \ChannelSel_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\ChannelSel[0]_i_1_n_0 ),
        .Q(ChannelSel[0]));
  FDCE \ChannelSel_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\ChannelSel[1]_i_1_n_0 ),
        .Q(ChannelSel[1]));
  FDCE \DataNum_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[0]),
        .Q(DataNum[0]));
  FDCE \DataNum_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[10]),
        .Q(DataNum[10]));
  FDCE \DataNum_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[11]),
        .Q(DataNum[11]));
  FDCE \DataNum_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[12]),
        .Q(DataNum[12]));
  FDCE \DataNum_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[13]),
        .Q(DataNum[13]));
  FDCE \DataNum_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[14]),
        .Q(DataNum[14]));
  FDCE \DataNum_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[15]),
        .Q(DataNum[15]));
  FDCE \DataNum_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[16]),
        .Q(DataNum[16]));
  FDCE \DataNum_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[17]),
        .Q(DataNum[17]));
  FDCE \DataNum_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[18]),
        .Q(DataNum[18]));
  FDCE \DataNum_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[19]),
        .Q(DataNum[19]));
  FDCE \DataNum_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[1]),
        .Q(DataNum[1]));
  FDCE \DataNum_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[20]),
        .Q(DataNum[20]));
  FDCE \DataNum_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[21]),
        .Q(DataNum[21]));
  FDCE \DataNum_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[22]),
        .Q(DataNum[22]));
  FDCE \DataNum_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[23]),
        .Q(DataNum[23]));
  FDCE \DataNum_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[24]),
        .Q(DataNum[24]));
  FDCE \DataNum_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[25]),
        .Q(DataNum[25]));
  FDCE \DataNum_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[26]),
        .Q(DataNum[26]));
  FDCE \DataNum_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[27]),
        .Q(DataNum[27]));
  FDCE \DataNum_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[28]),
        .Q(DataNum[28]));
  FDCE \DataNum_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[29]),
        .Q(DataNum[29]));
  FDCE \DataNum_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[2]),
        .Q(DataNum[2]));
  FDCE \DataNum_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[30]),
        .Q(DataNum[30]));
  FDCE \DataNum_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[31]),
        .Q(DataNum[31]));
  FDCE \DataNum_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[3]),
        .Q(DataNum[3]));
  FDCE \DataNum_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[4]),
        .Q(DataNum[4]));
  FDCE \DataNum_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[5]),
        .Q(DataNum[5]));
  FDCE \DataNum_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[6]),
        .Q(DataNum[6]));
  FDCE \DataNum_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[7]),
        .Q(DataNum[7]));
  FDCE \DataNum_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[8]),
        .Q(DataNum[8]));
  FDCE \DataNum_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(Q[9]),
        .Q(DataNum[9]));
  FDCE RestartReq_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(RestartReq_reg_0),
        .Q(RestartReq));
endmodule

(* ORIG_REF_NAME = "eth_receive_cmd_v1_0" *) 
module system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    ChannelSel,
    DataNum,
    ADC_Speed_Set,
    s00_axi_rvalid,
    s00_axi_bvalid,
    RestartReq,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    write_ddr_done,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]ChannelSel;
  output [31:0]DataNum;
  output [31:0]ADC_Speed_Set;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output RestartReq;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input write_ddr_done;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [31:0]ADC_Speed_Set;
  wire [1:0]ChannelSel;
  wire [31:0]DataNum;
  wire RestartReq;
  wire [1:0]cmd_addr;
  wire [31:0]cmd_data;
  wire cmdvalid;
  wire eth_receive_cmd_v1_0_S00_AXI_inst_n_1;
  wire eth_receive_cmd_v1_0_S00_AXI_inst_n_10;
  wire eth_receive_cmd_v1_0_S00_AXI_inst_n_7;
  wire eth_receive_cmd_v1_0_S00_AXI_inst_n_75;
  wire eth_receive_cmd_v1_0_S00_AXI_inst_n_76;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire write_ddr_done;

  system_eth_receive_cmd_0_0_cmd_rx cmd_rx
       (.ADC_Speed_Set(ADC_Speed_Set),
        .\ADC_Speed_Set_reg[31]_0 (eth_receive_cmd_v1_0_S00_AXI_inst_n_75),
        .ChannelSel(ChannelSel),
        .\ChannelSel_reg[1]_0 (cmd_addr),
        .\ChannelSel_reg[1]_1 (eth_receive_cmd_v1_0_S00_AXI_inst_n_10),
        .DataNum(DataNum),
        .E(eth_receive_cmd_v1_0_S00_AXI_inst_n_76),
        .Q(cmd_data),
        .RestartReq(RestartReq),
        .RestartReq_reg_0(eth_receive_cmd_v1_0_S00_AXI_inst_n_7),
        .SR(eth_receive_cmd_v1_0_S00_AXI_inst_n_1),
        .cmdvalid(cmdvalid),
        .s00_axi_aclk(s00_axi_aclk));
  system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0_S00_AXI eth_receive_cmd_v1_0_S00_AXI_inst
       (.E(eth_receive_cmd_v1_0_S00_AXI_inst_n_76),
        .Q(cmd_addr),
        .RestartReq(RestartReq),
        .SR(eth_receive_cmd_v1_0_S00_AXI_inst_n_1),
        .\address_reg[0]_0 (eth_receive_cmd_v1_0_S00_AXI_inst_n_7),
        .\address_reg[0]_1 (eth_receive_cmd_v1_0_S00_AXI_inst_n_75),
        .\address_reg[6]_0 (eth_receive_cmd_v1_0_S00_AXI_inst_n_10),
        .\cmd_data_reg[31]_0 (cmd_data),
        .cmdvalid(cmdvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .write_ddr_done(write_ddr_done));
endmodule

(* ORIG_REF_NAME = "eth_receive_cmd_v1_0_S00_AXI" *) 
module system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0_S00_AXI
   (s00_axi_awready,
    SR,
    s00_axi_wready,
    cmdvalid,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    \address_reg[0]_0 ,
    Q,
    \address_reg[6]_0 ,
    s00_axi_rdata,
    \cmd_data_reg[31]_0 ,
    \address_reg[0]_1 ,
    E,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    RestartReq,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    write_ddr_done);
  output s00_axi_awready;
  output [0:0]SR;
  output s00_axi_wready;
  output cmdvalid;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output \address_reg[0]_0 ;
  output [1:0]Q;
  output \address_reg[6]_0 ;
  output [31:0]s00_axi_rdata;
  output [31:0]\cmd_data_reg[31]_0 ;
  output [0:0]\address_reg[0]_1 ;
  output [0:0]E;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input RestartReq;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input write_ddr_done;

  wire [0:0]E;
  wire [1:0]Q;
  wire RestartReq;
  wire [0:0]SR;
  wire \address_reg[0]_0 ;
  wire [0:0]\address_reg[0]_1 ;
  wire \address_reg[6]_0 ;
  wire \address_reg_n_0_[3] ;
  wire \address_reg_n_0_[4] ;
  wire \address_reg_n_0_[5] ;
  wire \address_reg_n_0_[6] ;
  wire \address_reg_n_0_[7] ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:0]\cmd_data_reg[31]_0 ;
  wire cmdvalid;
  wire cmdvalid_i_1_n_0;
  wire cmdvalid_i_2_n_0;
  wire cmdvalid_i_3_n_0;
  wire cmdvalid_i_4_n_0;
  wire cmdvalid_i_5_n_0;
  wire cmdvalid_i_6_n_0;
  wire cmdvalid_i_7_n_0;
  wire [1:0]p_0_in;
  wire p_0_in0;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire [7:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire write_ddr_done;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ADC_Speed_Set[31]_i_1 
       (.I0(Q[0]),
        .I1(\address_reg[6]_0 ),
        .I2(Q[1]),
        .I3(cmdvalid),
        .O(\address_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ChannelSel[1]_i_2 
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ChannelSel[1]_i_3 
       (.I0(\address_reg_n_0_[6] ),
        .I1(\address_reg_n_0_[4] ),
        .I2(\address_reg_n_0_[3] ),
        .I3(p_0_in0),
        .I4(\address_reg_n_0_[5] ),
        .I5(\address_reg_n_0_[7] ),
        .O(\address_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \DataNum[31]_i_1 
       (.I0(Q[0]),
        .I1(\address_reg[6]_0 ),
        .I2(Q[1]),
        .I3(cmdvalid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF000400)) 
    RestartReq_i_1
       (.I0(Q[0]),
        .I1(\address_reg[6]_0 ),
        .I2(Q[1]),
        .I3(cmdvalid),
        .I4(RestartReq),
        .O(\address_reg[0]_0 ));
  FDCE \address_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[8]),
        .Q(Q[0]));
  FDCE \address_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[9]),
        .Q(Q[1]));
  FDCE \address_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[10]),
        .Q(p_0_in0));
  FDCE \address_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[11]),
        .Q(\address_reg_n_0_[3] ));
  FDCE \address_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[12]),
        .Q(\address_reg_n_0_[4] ));
  FDCE \address_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[13]),
        .Q(\address_reg_n_0_[5] ));
  FDCE \address_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[14]),
        .Q(\address_reg_n_0_[6] ));
  FDCE \address_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[15]),
        .Q(\address_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(s00_axi_awready),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(s00_axi_awready),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_awvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(write_ddr_done),
        .I1(slv_reg1[0]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[10]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[11]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[11]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[12]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[12]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[13]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[14]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[14]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[15]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[15]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[16]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[16]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[17]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[17]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[18]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[19]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[19]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[1]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[1]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[21]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[22]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[23]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[24]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[25]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[26]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[27]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[28]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[29]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[30]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[31]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[3]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[4]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[4]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[5]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[5]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[6]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[6]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[7]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[7]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[8]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[8]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(s00_axi_wready),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(SR));
  FDCE \cmd_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[8] ),
        .Q(\cmd_data_reg[31]_0 [0]));
  FDCE \cmd_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[18] ),
        .Q(\cmd_data_reg[31]_0 [10]));
  FDCE \cmd_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[19] ),
        .Q(\cmd_data_reg[31]_0 [11]));
  FDCE \cmd_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[20] ),
        .Q(\cmd_data_reg[31]_0 [12]));
  FDCE \cmd_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[21] ),
        .Q(\cmd_data_reg[31]_0 [13]));
  FDCE \cmd_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[22] ),
        .Q(\cmd_data_reg[31]_0 [14]));
  FDCE \cmd_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[23] ),
        .Q(\cmd_data_reg[31]_0 [15]));
  FDCE \cmd_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[24] ),
        .Q(\cmd_data_reg[31]_0 [16]));
  FDCE \cmd_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[25] ),
        .Q(\cmd_data_reg[31]_0 [17]));
  FDCE \cmd_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[26] ),
        .Q(\cmd_data_reg[31]_0 [18]));
  FDCE \cmd_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[27] ),
        .Q(\cmd_data_reg[31]_0 [19]));
  FDCE \cmd_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[9] ),
        .Q(\cmd_data_reg[31]_0 [1]));
  FDCE \cmd_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[28] ),
        .Q(\cmd_data_reg[31]_0 [20]));
  FDCE \cmd_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[29] ),
        .Q(\cmd_data_reg[31]_0 [21]));
  FDCE \cmd_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[30] ),
        .Q(\cmd_data_reg[31]_0 [22]));
  FDCE \cmd_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[31] ),
        .Q(\cmd_data_reg[31]_0 [23]));
  FDCE \cmd_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[0]),
        .Q(\cmd_data_reg[31]_0 [24]));
  FDCE \cmd_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[1]),
        .Q(\cmd_data_reg[31]_0 [25]));
  FDCE \cmd_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[2]),
        .Q(\cmd_data_reg[31]_0 [26]));
  FDCE \cmd_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[3]),
        .Q(\cmd_data_reg[31]_0 [27]));
  FDCE \cmd_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[4]),
        .Q(\cmd_data_reg[31]_0 [28]));
  FDCE \cmd_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[5]),
        .Q(\cmd_data_reg[31]_0 [29]));
  FDCE \cmd_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[10] ),
        .Q(\cmd_data_reg[31]_0 [2]));
  FDCE \cmd_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[6]),
        .Q(\cmd_data_reg[31]_0 [30]));
  FDCE \cmd_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(slv_reg0[7]),
        .Q(\cmd_data_reg[31]_0 [31]));
  FDCE \cmd_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[11] ),
        .Q(\cmd_data_reg[31]_0 [3]));
  FDCE \cmd_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[12] ),
        .Q(\cmd_data_reg[31]_0 [4]));
  FDCE \cmd_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[13] ),
        .Q(\cmd_data_reg[31]_0 [5]));
  FDCE \cmd_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[14] ),
        .Q(\cmd_data_reg[31]_0 [6]));
  FDCE \cmd_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[15] ),
        .Q(\cmd_data_reg[31]_0 [7]));
  FDCE \cmd_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[16] ),
        .Q(\cmd_data_reg[31]_0 [8]));
  FDCE \cmd_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cmdvalid_i_1_n_0),
        .CLR(SR),
        .D(\slv_reg1_reg_n_0_[17] ),
        .Q(\cmd_data_reg[31]_0 [9]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    cmdvalid_i_1
       (.I0(cmdvalid_i_2_n_0),
        .I1(cmdvalid_i_3_n_0),
        .I2(cmdvalid_i_4_n_0),
        .I3(cmdvalid_i_5_n_0),
        .I4(cmdvalid_i_6_n_0),
        .I5(cmdvalid_i_7_n_0),
        .O(cmdvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    cmdvalid_i_2
       (.I0(slv_reg0[21]),
        .I1(slv_reg0[31]),
        .I2(slv_reg1[1]),
        .I3(slv_reg1[2]),
        .O(cmdvalid_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    cmdvalid_i_3
       (.I0(slv_reg0[24]),
        .I1(s00_axi_wready),
        .I2(slv_reg0[16]),
        .I3(slv_reg0[27]),
        .O(cmdvalid_i_3_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    cmdvalid_i_4
       (.I0(slv_reg1[3]),
        .I1(slv_reg1[6]),
        .I2(slv_reg1[4]),
        .I3(slv_reg0[20]),
        .O(cmdvalid_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    cmdvalid_i_5
       (.I0(slv_reg0[30]),
        .I1(slv_reg0[28]),
        .I2(slv_reg1[7]),
        .I3(slv_reg0[26]),
        .O(cmdvalid_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    cmdvalid_i_6
       (.I0(slv_reg0[23]),
        .I1(slv_reg0[19]),
        .I2(slv_reg1[5]),
        .I3(slv_reg0[25]),
        .O(cmdvalid_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    cmdvalid_i_7
       (.I0(slv_reg0[17]),
        .I1(slv_reg0[29]),
        .I2(s00_axi_wvalid),
        .I3(slv_reg0[18]),
        .I4(slv_reg1[0]),
        .I5(slv_reg0[22]),
        .O(cmdvalid_i_7_n_0));
  FDCE cmdvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(cmdvalid_i_1_n_0),
        .Q(cmdvalid));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
