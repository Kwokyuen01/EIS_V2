connect -url tcp:127.0.0.1:3121
source E:/project/ACZ702/new/ad9238_ddr3_tcp/ad9238_ddr3_tcp.sdk/ad9238_ddr3_tcp_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 26FBCA1F8871"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 26FBCA1F8871" && level==0} -index 1
fpga -file E:/project/ACZ702/new/ad9238_ddr3_tcp/ad9238_ddr3_tcp.sdk/ad9238_ddr3_tcp_hw_platform_0/ad9238_ddr3_tcp.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 26FBCA1F8871"} -index 0
loadhw -hw E:/project/ACZ702/new/ad9238_ddr3_tcp/ad9238_ddr3_tcp.sdk/ad9238_ddr3_tcp_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 26FBCA1F8871"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 26FBCA1F8871"} -index 0
dow E:/project/ACZ702/new/ad9238_ddr3_tcp/ad9238_ddr3_tcp.sdk/ad9238_ddr3_tcp/Debug/ad9238_ddr3_tcp.elf
configparams force-mem-access 0
bpadd -addr &main
