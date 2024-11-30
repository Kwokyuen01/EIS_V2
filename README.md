# EIS V2 项目

## 项目简介
本项目基于AD9238 ADC、DDR3 内存和 TCP 通信，实现高速数据采集、存储和网络传输功能。  

## 项目结构
- `ad9238_ddr3_tcp.srcs/`: 项目源代码目录
- `ad9238_ddr3_tcp.sdk/`: SDK 相关文件
- `ip_repo/`: IP 核仓库
- `ad9238_ddr3_tcp.xpr`: Vivado 项目文件

## 主要功能
- AD9238 ADC 数据采集
- DDR3 内存数据缓存
- TCP 网络数据传输
- DDS 信号发生器,0.1Hz~30KHz   
- AD9708 DAC输出   

## 开发环境
- Vivado 版本：[2018.3]
- SDK 版本：[2018.3]
- 目标开发板：[黑金ZYNQ-7020]
- 模块：[AD9238] [AN108]

## 使用说明
1. 克隆仓库

2. 打开Vivado，打开ad9238_ddr3_tcp.xpr文件

3. 点击Generate Bitstream生成比特流文件
4. file->export->export hardware导出硬件文件,
- include bitstream      

5. launch SDK
6.右键ad9238_ddr3_tcp, run as->run configuration

    - Reset entire system

    - Program FPGA

    - Run ps7_init

    - Run ps7_post_config

6. Run 烧录程序
