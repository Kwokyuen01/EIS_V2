/*
 * Copyright (C) 2009 - 2018 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "sleep.h"
#include "eth_receive_cmd.h"
#include "xil_io.h"
#include "xtime_l.h"
#include "FFT/FFT.h"

#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

// 声明外部变量和函数
extern void update_sampling_rate(uint8_t dds_mode);
extern float Fs;

#define ADC_Data_Addr					0x01800000
#define XSLCR_BASEADDR					0xF8000000U
#define XSLCR_LOCK_ADDR				    (XSLCR_BASEADDR + 0x00000004U)
#define XSLCR_UNLOCK_ADDR				(XSLCR_BASEADDR + 0x00000008U)
#define XSLCR_FPGA_RST_CTRL_ADDR        (XSLCR_BASEADDR + 0x00000240U)
#define XSLCR_LOCK_CODE		    		0x0000767BU
#define XSLCR_UNLOCK_CODE				0x0000DF0DU

// 定义固定帧头
#define FRAME_HEADER_0    0x28
#define FRAME_HEADER_1    0x01
#define FRAME_HEADER_2    0x00

// 数据类型定义
typedef enum {
    TCP_TYPE_STRING = 0x02,    // 字符串
    TCP_TYPE_INT32  = 0x03,    // 32位整数
    TCP_TYPE_FLOAT  = 0x04,    // 浮点数
    TCP_TYPE_HEX    = 0x05,    // 16进制
    TCP_TYPE_ADC    = 0x06,    // ADC数据
    TCP_TYPE_DEBUG  = 0x07     // 调试信息
} tcp_data_type_t;

// 数据包头结构 (4字节)
typedef struct {
    uint8_t header0;    // 固定为0x28
    uint8_t header1;    // 固定为0x01
    uint8_t header2;    // 固定为0x00
    uint8_t type;       // 数据类型
} __attribute__((packed)) tcp_packet_header_t;

uint8_t ADC_Data[200*1024*1024/8];
u32 uiIdx = 0;
struct tcp_pcb *pcb;
extern struct tcp_pcb *serpcb;
int data[2];
int num = 0;
uint8_t recv_flag = 0;
int data_buf[32768/4];

extern FFTchannel ch1, ch2;  // 引用main.c中定义的FFT通道
extern const char* dds_freq_table[];  // 引用main.c中定义的频率表

// TCP基础打印函数
err_t tcp_print(const void* data, tcp_data_type_t type, uint32_t length) 
{
    if (!data) {
        return ERR_VAL;
    }
    
    // 准备数据包头
    tcp_packet_header_t header;
    header.header0 = FRAME_HEADER_0;
    header.header1 = FRAME_HEADER_1;
    header.header2 = FRAME_HEADER_2;
    header.type = type;
    
    // 发送头部
    err_t err = tcp_write(serpcb, &header, sizeof(tcp_packet_header_t), TCP_WRITE_FLAG_COPY);
    if (err != ERR_OK) return err;
    tcp_output(serpcb);
    
    // 发送数据部分
    u32_t buff = tcp_sndbuf(serpcb);
    uint32_t sent = 0;
    
    while (sent < length) {
        buff = tcp_sndbuf(serpcb);
        if (buff == 0) continue;
        
        uint32_t remain = length - sent;
        uint32_t to_send = (buff > remain) ? remain : buff;
        
        err = tcp_write(serpcb, 
                       (const uint8_t*)data + sent, 
                       to_send, 
                       TCP_WRITE_FLAG_COPY);
        
        if (err == ERR_OK) {
            tcp_output(serpcb);
            sent += to_send;
        } else {
            return err;
        }
    }
    
    return ERR_OK;
}

// 字符串打印函数
err_t tcp_print_string(const char* str) {
    return tcp_print(str, TCP_TYPE_STRING, strlen(str) + 1);
}

// 浮点数打印函数
err_t tcp_print_float(const float* value) {
    return tcp_print(value, TCP_TYPE_FLOAT, sizeof(float));
}

// 整数打印函数
err_t tcp_print_int32(const int32_t* value) {
    return tcp_print(value, TCP_TYPE_INT32, sizeof(int32_t));
}

// 十六进制数据打印函数
err_t tcp_print_hex(const void* data, uint32_t len) {
    return tcp_print(data, TCP_TYPE_HEX, len);
}

// ADC数据打印函数
err_t tcp_print_adc(const void* data, uint32_t len) {
    return tcp_print(data, TCP_TYPE_ADC, len);
}

// 格式化打印函数
err_t tcp_printf(const char* format, ...) {
    char buffer[256];
    va_list args;
    
    // 串口打印
    va_start(args, format);
    xil_printf(format, args);
    va_end(args);
    
    // TCP打印
    va_start(args, format);
    vsnprintf(buffer, sizeof(buffer), format, args);
    va_end(args);
    return tcp_print_string(buffer);
}

int transfer_data() {
	return 0;
}

void print_app_header()
{
#if (LWIP_IPV6==0)
    // 串口打印
    xil_printf("\n\r\n\r----- ad9238_ddr3_tcp ------\n\r");
    // TCP打印
    tcp_print_string("\n\r\n\r----- ad9238_ddr3_tcp ------\n\r");
#else
    xil_printf("\n\r\n\r-----lwIPv6 TCP echo server ------\n\r");
    tcp_print_string("\n\r\n\r-----lwIPv6 TCP echo server ------\n\r");
#endif
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
    int read_adc_data = 0;
    int i;
    uiIdx = 0;

    if (!p) {
        tcp_close(tpcb);
        tcp_recv(tpcb, NULL);
        return ERR_OK;
    }

    tcp_recved(tpcb, p->len);

    if (tcp_sndbuf(tpcb) > p->len) {
        for(i=0;i<4;i++){
            data[0] = htonl(Xil_In32(p->payload+8*i));
            data[1] = htonl(Xil_In32(p->payload + 8*i+4));
            ETH_RECEIVE_CMD_mWriteReg(XPAR_ETH_RECEIVE_CMD_0_S00_AXI_BASEADDR,
                                    ETH_RECEIVE_CMD_S00_AXI_SLV_REG0_OFFSET,data[0]);
            ETH_RECEIVE_CMD_mWriteReg(XPAR_ETH_RECEIVE_CMD_0_S00_AXI_BASEADDR,
                                    ETH_RECEIVE_CMD_S00_AXI_SLV_REG1_OFFSET,data[1]);
            
            // 检查是否为数据读取命令
            if((data[0] & 0xFF00) == 0x200){
                num = (data[0] & 0xFF)|((data[1]&0xFFFFFF00)>>8);
                num = num*2;
            }
            
            // 检查是否为DDS相关命令
            if(((data[0] & 0xFF00) == 0x400) || ((data[0] & 0xFF00) == 0x500)){
                uint8_t mode = (data[1]&0xFFFFFF00)>>8;
                update_sampling_rate(mode);
                xil_printf("DDS %s: %s, Fs=%.0f SPS\r\n", 
                          ((data[0] & 0xFF00) == 0x400) ? "Set" : "Reset", 
                          dds_freq_table[mode], 
                          Fs);
            }
        }
    }

    while(!read_adc_data) {
        read_adc_data = ETH_RECEIVE_CMD_mReadReg(XPAR_ETH_RECEIVE_CMD_0_S00_AXI_BASEADDR,
                                               ETH_RECEIVE_CMD_S00_AXI_SLV_REG3_OFFSET);
    }

    recv_flag = 1;
    pbuf_free(p);
    return ERR_OK;
}

err_t tcp_write_over(void *arg, struct tcp_pcb *tpcb)
{
	u32 buff;
	buff = tcp_sndbuf(tpcb);
	if(buff >= num){
		tcp_write(tpcb, &data_buf[uiIdx/4],num*2,1);
		tcp_output(tpcb);
	}
	else{
		tcp_write(tpcb, &data_buf[uiIdx/4],TCP_SND_BUF,1);
		tcp_output(tpcb);
		num = num - buff;
		uiIdx += buff;
		tcp_arg(tpcb, arg);
		pbuf_free(arg);
		tcp_poll(tpcb, tcp_write_over,100);
	}
	pbuf_free(arg);
	return ERR_OK;
}
err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	static int connection = 1;

	/* set the receive callback for this connection */
	tcp_recv(newpcb, recv_callback);
	/* just use an integer number indicating the connection id as the
	   callback argument */
	tcp_arg(newpcb, (void*)(UINTPTR)connection);

	/* increment for subsequent accepted connections */
	connection++;
	serpcb=newpcb; // 将建立的pcb赋予全局变量serpcb；
	return ERR_OK;
}

int start_application()
{

	err_t err;
	unsigned port = 6102;

	/* create new TCP PCB structure */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = tcp_bind(pcb, IP_ANY_TYPE, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb, NULL);

	/* listen for connections */
	pcb = tcp_listen(pcb);
	if (!pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(pcb, accept_callback);

	xil_printf("TCP echo server started @ port %d\n\r", port);

	return 0;
}
