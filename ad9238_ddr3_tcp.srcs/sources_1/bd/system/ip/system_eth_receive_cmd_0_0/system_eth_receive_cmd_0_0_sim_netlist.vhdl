-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Nov 28 22:37:48 2024
-- Host        : DESKTOP-VU442JP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Project/ad9238_ddr3_tcp/ad9238_ddr3_tcp.srcs/sources_1/bd/system/ip/system_eth_receive_cmd_0_0/system_eth_receive_cmd_0_0_sim_netlist.vhdl
-- Design      : system_eth_receive_cmd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_eth_receive_cmd_0_0_cmd_rx is
  port (
    RestartReq : out STD_LOGIC;
    ChannelSel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DataNum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_Speed_Set : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RestartReq_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ChannelSel_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ChannelSel_reg[1]_1\ : in STD_LOGIC;
    cmdvalid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ADC_Speed_Set_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_eth_receive_cmd_0_0_cmd_rx : entity is "cmd_rx";
end system_eth_receive_cmd_0_0_cmd_rx;

architecture STRUCTURE of system_eth_receive_cmd_0_0_cmd_rx is
  signal \^channelsel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ChannelSel[0]_i_1_n_0\ : STD_LOGIC;
  signal \ChannelSel[1]_i_1_n_0\ : STD_LOGIC;
begin
  ChannelSel(1 downto 0) <= \^channelsel\(1 downto 0);
\ADC_Speed_Set_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(0),
      Q => ADC_Speed_Set(0)
    );
\ADC_Speed_Set_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(10),
      Q => ADC_Speed_Set(10)
    );
\ADC_Speed_Set_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(11),
      Q => ADC_Speed_Set(11)
    );
\ADC_Speed_Set_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(12),
      Q => ADC_Speed_Set(12)
    );
\ADC_Speed_Set_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(13),
      Q => ADC_Speed_Set(13)
    );
\ADC_Speed_Set_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(14),
      Q => ADC_Speed_Set(14)
    );
\ADC_Speed_Set_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(15),
      Q => ADC_Speed_Set(15)
    );
\ADC_Speed_Set_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(16),
      Q => ADC_Speed_Set(16)
    );
\ADC_Speed_Set_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(17),
      Q => ADC_Speed_Set(17)
    );
\ADC_Speed_Set_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(18),
      Q => ADC_Speed_Set(18)
    );
\ADC_Speed_Set_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(19),
      Q => ADC_Speed_Set(19)
    );
\ADC_Speed_Set_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(1),
      Q => ADC_Speed_Set(1)
    );
\ADC_Speed_Set_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(20),
      Q => ADC_Speed_Set(20)
    );
\ADC_Speed_Set_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(21),
      Q => ADC_Speed_Set(21)
    );
\ADC_Speed_Set_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(22),
      Q => ADC_Speed_Set(22)
    );
\ADC_Speed_Set_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(23),
      Q => ADC_Speed_Set(23)
    );
\ADC_Speed_Set_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(24),
      Q => ADC_Speed_Set(24)
    );
\ADC_Speed_Set_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(25),
      Q => ADC_Speed_Set(25)
    );
\ADC_Speed_Set_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(26),
      Q => ADC_Speed_Set(26)
    );
\ADC_Speed_Set_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(27),
      Q => ADC_Speed_Set(27)
    );
\ADC_Speed_Set_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(28),
      Q => ADC_Speed_Set(28)
    );
\ADC_Speed_Set_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(29),
      Q => ADC_Speed_Set(29)
    );
\ADC_Speed_Set_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(2),
      Q => ADC_Speed_Set(2)
    );
\ADC_Speed_Set_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(30),
      Q => ADC_Speed_Set(30)
    );
\ADC_Speed_Set_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(31),
      Q => ADC_Speed_Set(31)
    );
\ADC_Speed_Set_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(3),
      Q => ADC_Speed_Set(3)
    );
\ADC_Speed_Set_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(4),
      Q => ADC_Speed_Set(4)
    );
\ADC_Speed_Set_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(5),
      Q => ADC_Speed_Set(5)
    );
\ADC_Speed_Set_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(6),
      Q => ADC_Speed_Set(6)
    );
\ADC_Speed_Set_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(7),
      Q => ADC_Speed_Set(7)
    );
\ADC_Speed_Set_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(8),
      Q => ADC_Speed_Set(8)
    );
\ADC_Speed_Set_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ADC_Speed_Set_reg[31]_0\(0),
      CLR => SR(0),
      D => Q(9),
      Q => ADC_Speed_Set(9)
    );
\ChannelSel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => Q(0),
      I1 => \ChannelSel_reg[1]_0\(0),
      I2 => \ChannelSel_reg[1]_1\,
      I3 => \ChannelSel_reg[1]_0\(1),
      I4 => cmdvalid,
      I5 => \^channelsel\(0),
      O => \ChannelSel[0]_i_1_n_0\
    );
\ChannelSel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => Q(1),
      I1 => \ChannelSel_reg[1]_0\(0),
      I2 => \ChannelSel_reg[1]_1\,
      I3 => \ChannelSel_reg[1]_0\(1),
      I4 => cmdvalid,
      I5 => \^channelsel\(1),
      O => \ChannelSel[1]_i_1_n_0\
    );
\ChannelSel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \ChannelSel[0]_i_1_n_0\,
      Q => \^channelsel\(0)
    );
\ChannelSel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \ChannelSel[1]_i_1_n_0\,
      Q => \^channelsel\(1)
    );
\DataNum_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(0),
      Q => DataNum(0)
    );
\DataNum_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(10),
      Q => DataNum(10)
    );
\DataNum_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(11),
      Q => DataNum(11)
    );
\DataNum_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(12),
      Q => DataNum(12)
    );
\DataNum_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(13),
      Q => DataNum(13)
    );
\DataNum_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(14),
      Q => DataNum(14)
    );
\DataNum_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(15),
      Q => DataNum(15)
    );
\DataNum_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(16),
      Q => DataNum(16)
    );
\DataNum_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(17),
      Q => DataNum(17)
    );
\DataNum_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(18),
      Q => DataNum(18)
    );
\DataNum_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(19),
      Q => DataNum(19)
    );
\DataNum_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(1),
      Q => DataNum(1)
    );
\DataNum_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(20),
      Q => DataNum(20)
    );
\DataNum_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(21),
      Q => DataNum(21)
    );
\DataNum_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(22),
      Q => DataNum(22)
    );
\DataNum_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(23),
      Q => DataNum(23)
    );
\DataNum_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(24),
      Q => DataNum(24)
    );
\DataNum_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(25),
      Q => DataNum(25)
    );
\DataNum_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(26),
      Q => DataNum(26)
    );
\DataNum_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(27),
      Q => DataNum(27)
    );
\DataNum_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(28),
      Q => DataNum(28)
    );
\DataNum_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(29),
      Q => DataNum(29)
    );
\DataNum_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(2),
      Q => DataNum(2)
    );
\DataNum_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(30),
      Q => DataNum(30)
    );
\DataNum_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(31),
      Q => DataNum(31)
    );
\DataNum_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(3),
      Q => DataNum(3)
    );
\DataNum_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(4),
      Q => DataNum(4)
    );
\DataNum_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(5),
      Q => DataNum(5)
    );
\DataNum_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(6),
      Q => DataNum(6)
    );
\DataNum_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(7),
      Q => DataNum(7)
    );
\DataNum_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(8),
      Q => DataNum(8)
    );
\DataNum_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => Q(9),
      Q => DataNum(9)
    );
RestartReq_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => RestartReq_reg_0,
      Q => RestartReq
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wready : out STD_LOGIC;
    cmdvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    \address_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \address_reg[6]_0\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \cmd_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \address_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    RestartReq : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    write_ddr_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0_S00_AXI : entity is "eth_receive_cmd_v1_0_S00_AXI";
end system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0_S00_AXI;

architecture STRUCTURE of system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^address_reg[6]_0\ : STD_LOGIC;
  signal \address_reg_n_0_[3]\ : STD_LOGIC;
  signal \address_reg_n_0_[4]\ : STD_LOGIC;
  signal \address_reg_n_0_[5]\ : STD_LOGIC;
  signal \address_reg_n_0_[6]\ : STD_LOGIC;
  signal \address_reg_n_0_[7]\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^cmdvalid\ : STD_LOGIC;
  signal cmdvalid_i_1_n_0 : STD_LOGIC;
  signal cmdvalid_i_2_n_0 : STD_LOGIC;
  signal cmdvalid_i_3_n_0 : STD_LOGIC;
  signal cmdvalid_i_4_n_0 : STD_LOGIC;
  signal cmdvalid_i_5_n_0 : STD_LOGIC;
  signal cmdvalid_i_6_n_0 : STD_LOGIC;
  signal cmdvalid_i_7_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADC_Speed_Set[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of RestartReq_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
  \address_reg[6]_0\ <= \^address_reg[6]_0\;
  cmdvalid <= \^cmdvalid\;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\ADC_Speed_Set[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^address_reg[6]_0\,
      I2 => \^q\(1),
      I3 => \^cmdvalid\,
      O => \address_reg[0]_1\(0)
    );
\ChannelSel[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\ChannelSel[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \address_reg_n_0_[6]\,
      I1 => \address_reg_n_0_[4]\,
      I2 => \address_reg_n_0_[3]\,
      I3 => p_0_in0,
      I4 => \address_reg_n_0_[5]\,
      I5 => \address_reg_n_0_[7]\,
      O => \^address_reg[6]_0\
    );
\DataNum[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^address_reg[6]_0\,
      I2 => \^q\(1),
      I3 => \^cmdvalid\,
      O => E(0)
    );
RestartReq_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^address_reg[6]_0\,
      I2 => \^q\(1),
      I3 => \^cmdvalid\,
      I4 => RestartReq,
      O => \address_reg[0]_0\
    );
\address_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(8),
      Q => \^q\(0)
    );
\address_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(9),
      Q => \^q\(1)
    );
\address_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(10),
      Q => p_0_in0
    );
\address_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(11),
      Q => \address_reg_n_0_[3]\
    );
\address_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(12),
      Q => \address_reg_n_0_[4]\
    );
\address_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(13),
      Q => \address_reg_n_0_[5]\
    );
\address_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(14),
      Q => \address_reg_n_0_[6]\
    );
\address_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(15),
      Q => \address_reg_n_0_[7]\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF8888"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => aw_en_reg_n_0,
      I5 => \^s00_axi_awready\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^sr\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^s00_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^s00_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_awvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => write_ddr_done,
      I1 => slv_reg1(0),
      I2 => axi_araddr(2),
      I3 => slv_reg2(0),
      I4 => axi_araddr(3),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(10),
      I3 => axi_araddr(3),
      I4 => slv_reg0(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[11]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(11),
      I3 => axi_araddr(3),
      I4 => slv_reg0(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[12]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(12),
      I3 => axi_araddr(3),
      I4 => slv_reg0(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[13]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(13),
      I3 => axi_araddr(3),
      I4 => slv_reg0(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[14]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(14),
      I3 => axi_araddr(3),
      I4 => slv_reg0(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(15),
      I3 => axi_araddr(3),
      I4 => slv_reg0(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[16]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(16),
      I3 => axi_araddr(3),
      I4 => slv_reg0(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[17]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(17),
      I3 => axi_araddr(3),
      I4 => slv_reg0(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[18]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(18),
      I3 => axi_araddr(3),
      I4 => slv_reg0(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[19]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(19),
      I3 => axi_araddr(3),
      I4 => slv_reg0(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => axi_araddr(2),
      I2 => slv_reg2(1),
      I3 => axi_araddr(3),
      I4 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[20]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(20),
      I3 => axi_araddr(3),
      I4 => slv_reg0(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[21]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(21),
      I3 => axi_araddr(3),
      I4 => slv_reg0(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[22]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => slv_reg0(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[23]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(23),
      I3 => axi_araddr(3),
      I4 => slv_reg0(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => slv_reg0(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(25),
      I3 => axi_araddr(3),
      I4 => slv_reg0(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(26),
      I3 => axi_araddr(3),
      I4 => slv_reg0(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(27),
      I3 => axi_araddr(3),
      I4 => slv_reg0(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[28]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(28),
      I3 => axi_araddr(3),
      I4 => slv_reg0(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[29]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => slv_reg0(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => axi_araddr(2),
      I2 => slv_reg2(2),
      I3 => axi_araddr(3),
      I4 => slv_reg0(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => slv_reg0(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[31]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(31),
      I3 => axi_araddr(3),
      I4 => slv_reg0(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => axi_araddr(2),
      I2 => slv_reg2(3),
      I3 => axi_araddr(3),
      I4 => slv_reg0(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => axi_araddr(2),
      I2 => slv_reg2(4),
      I3 => axi_araddr(3),
      I4 => slv_reg0(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => axi_araddr(2),
      I2 => slv_reg2(5),
      I3 => axi_araddr(3),
      I4 => slv_reg0(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => axi_araddr(2),
      I2 => slv_reg2(6),
      I3 => axi_araddr(3),
      I4 => slv_reg0(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => axi_araddr(2),
      I2 => slv_reg2(7),
      I3 => axi_araddr(3),
      I4 => slv_reg0(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(8),
      I3 => axi_araddr(3),
      I4 => slv_reg0(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(9),
      I3 => axi_araddr(3),
      I4 => slv_reg0(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
\cmd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[8]\,
      Q => \cmd_data_reg[31]_0\(0)
    );
\cmd_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[18]\,
      Q => \cmd_data_reg[31]_0\(10)
    );
\cmd_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[19]\,
      Q => \cmd_data_reg[31]_0\(11)
    );
\cmd_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[20]\,
      Q => \cmd_data_reg[31]_0\(12)
    );
\cmd_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[21]\,
      Q => \cmd_data_reg[31]_0\(13)
    );
\cmd_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[22]\,
      Q => \cmd_data_reg[31]_0\(14)
    );
\cmd_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[23]\,
      Q => \cmd_data_reg[31]_0\(15)
    );
\cmd_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[24]\,
      Q => \cmd_data_reg[31]_0\(16)
    );
\cmd_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[25]\,
      Q => \cmd_data_reg[31]_0\(17)
    );
\cmd_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[26]\,
      Q => \cmd_data_reg[31]_0\(18)
    );
\cmd_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[27]\,
      Q => \cmd_data_reg[31]_0\(19)
    );
\cmd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[9]\,
      Q => \cmd_data_reg[31]_0\(1)
    );
\cmd_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[28]\,
      Q => \cmd_data_reg[31]_0\(20)
    );
\cmd_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[29]\,
      Q => \cmd_data_reg[31]_0\(21)
    );
\cmd_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[30]\,
      Q => \cmd_data_reg[31]_0\(22)
    );
\cmd_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[31]\,
      Q => \cmd_data_reg[31]_0\(23)
    );
\cmd_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(0),
      Q => \cmd_data_reg[31]_0\(24)
    );
\cmd_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(1),
      Q => \cmd_data_reg[31]_0\(25)
    );
\cmd_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(2),
      Q => \cmd_data_reg[31]_0\(26)
    );
\cmd_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(3),
      Q => \cmd_data_reg[31]_0\(27)
    );
\cmd_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(4),
      Q => \cmd_data_reg[31]_0\(28)
    );
\cmd_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(5),
      Q => \cmd_data_reg[31]_0\(29)
    );
\cmd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[10]\,
      Q => \cmd_data_reg[31]_0\(2)
    );
\cmd_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(6),
      Q => \cmd_data_reg[31]_0\(30)
    );
\cmd_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => slv_reg0(7),
      Q => \cmd_data_reg[31]_0\(31)
    );
\cmd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[11]\,
      Q => \cmd_data_reg[31]_0\(3)
    );
\cmd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[12]\,
      Q => \cmd_data_reg[31]_0\(4)
    );
\cmd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[13]\,
      Q => \cmd_data_reg[31]_0\(5)
    );
\cmd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[14]\,
      Q => \cmd_data_reg[31]_0\(6)
    );
\cmd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[15]\,
      Q => \cmd_data_reg[31]_0\(7)
    );
\cmd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[16]\,
      Q => \cmd_data_reg[31]_0\(8)
    );
\cmd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cmdvalid_i_1_n_0,
      CLR => \^sr\(0),
      D => \slv_reg1_reg_n_0_[17]\,
      Q => \cmd_data_reg[31]_0\(9)
    );
cmdvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => cmdvalid_i_2_n_0,
      I1 => cmdvalid_i_3_n_0,
      I2 => cmdvalid_i_4_n_0,
      I3 => cmdvalid_i_5_n_0,
      I4 => cmdvalid_i_6_n_0,
      I5 => cmdvalid_i_7_n_0,
      O => cmdvalid_i_1_n_0
    );
cmdvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => slv_reg0(31),
      I2 => slv_reg1(1),
      I3 => slv_reg1(2),
      O => cmdvalid_i_2_n_0
    );
cmdvalid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => \^s00_axi_wready\,
      I2 => slv_reg0(16),
      I3 => slv_reg0(27),
      O => cmdvalid_i_3_n_0
    );
cmdvalid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg1(6),
      I2 => slv_reg1(4),
      I3 => slv_reg0(20),
      O => cmdvalid_i_4_n_0
    );
cmdvalid_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => slv_reg0(28),
      I2 => slv_reg1(7),
      I3 => slv_reg0(26),
      O => cmdvalid_i_5_n_0
    );
cmdvalid_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg0(19),
      I2 => slv_reg1(5),
      I3 => slv_reg0(25),
      O => cmdvalid_i_6_n_0
    );
cmdvalid_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg0(29),
      I2 => s00_axi_wvalid,
      I3 => slv_reg0(18),
      I4 => slv_reg1(0),
      I5 => slv_reg0(22),
      O => cmdvalid_i_7_n_0
    );
cmdvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => cmdvalid_i_1_n_0,
      Q => \^cmdvalid\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => \^sr\(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => \^sr\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => \^sr\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => \^sr\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => \^sr\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => \^sr\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => \^sr\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^sr\(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ChannelSel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DataNum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_Speed_Set : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    RestartReq : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    write_ddr_done : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0 : entity is "eth_receive_cmd_v1_0";
end system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0;

architecture STRUCTURE of system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0 is
  signal \^restartreq\ : STD_LOGIC;
  signal cmd_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cmd_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmdvalid : STD_LOGIC;
  signal eth_receive_cmd_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal eth_receive_cmd_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal eth_receive_cmd_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal eth_receive_cmd_v1_0_S00_AXI_inst_n_75 : STD_LOGIC;
  signal eth_receive_cmd_v1_0_S00_AXI_inst_n_76 : STD_LOGIC;
begin
  RestartReq <= \^restartreq\;
cmd_rx: entity work.system_eth_receive_cmd_0_0_cmd_rx
     port map (
      ADC_Speed_Set(31 downto 0) => ADC_Speed_Set(31 downto 0),
      \ADC_Speed_Set_reg[31]_0\(0) => eth_receive_cmd_v1_0_S00_AXI_inst_n_75,
      ChannelSel(1 downto 0) => ChannelSel(1 downto 0),
      \ChannelSel_reg[1]_0\(1 downto 0) => cmd_addr(1 downto 0),
      \ChannelSel_reg[1]_1\ => eth_receive_cmd_v1_0_S00_AXI_inst_n_10,
      DataNum(31 downto 0) => DataNum(31 downto 0),
      E(0) => eth_receive_cmd_v1_0_S00_AXI_inst_n_76,
      Q(31 downto 0) => cmd_data(31 downto 0),
      RestartReq => \^restartreq\,
      RestartReq_reg_0 => eth_receive_cmd_v1_0_S00_AXI_inst_n_7,
      SR(0) => eth_receive_cmd_v1_0_S00_AXI_inst_n_1,
      cmdvalid => cmdvalid,
      s00_axi_aclk => s00_axi_aclk
    );
eth_receive_cmd_v1_0_S00_AXI_inst: entity work.system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0_S00_AXI
     port map (
      E(0) => eth_receive_cmd_v1_0_S00_AXI_inst_n_76,
      Q(1 downto 0) => cmd_addr(1 downto 0),
      RestartReq => \^restartreq\,
      SR(0) => eth_receive_cmd_v1_0_S00_AXI_inst_n_1,
      \address_reg[0]_0\ => eth_receive_cmd_v1_0_S00_AXI_inst_n_7,
      \address_reg[0]_1\(0) => eth_receive_cmd_v1_0_S00_AXI_inst_n_75,
      \address_reg[6]_0\ => eth_receive_cmd_v1_0_S00_AXI_inst_n_10,
      \cmd_data_reg[31]_0\(31 downto 0) => cmd_data(31 downto 0),
      cmdvalid => cmdvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      write_ddr_done => write_ddr_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_eth_receive_cmd_0_0 is
  port (
    write_ddr_done : in STD_LOGIC;
    ChannelSel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DataNum : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_Speed_Set : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RestartReq : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_eth_receive_cmd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_eth_receive_cmd_0_0 : entity is "system_eth_receive_cmd_0_0,eth_receive_cmd_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_eth_receive_cmd_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_eth_receive_cmd_0_0 : entity is "eth_receive_cmd_v1_0,Vivado 2018.3";
end system_eth_receive_cmd_0_0;

architecture STRUCTURE of system_eth_receive_cmd_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_eth_receive_cmd_0_0_eth_receive_cmd_v1_0
     port map (
      ADC_Speed_Set(31 downto 0) => ADC_Speed_Set(31 downto 0),
      ChannelSel(1 downto 0) => ChannelSel(1 downto 0),
      DataNum(31 downto 0) => DataNum(31 downto 0),
      RestartReq => RestartReq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      write_ddr_done => write_ddr_done
    );
end STRUCTURE;
