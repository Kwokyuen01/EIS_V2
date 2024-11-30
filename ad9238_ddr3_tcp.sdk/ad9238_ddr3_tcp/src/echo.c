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
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "sleep.h"
#include "eth_receive_cmd.h"
#include "xil_io.h"

#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

#define ADC_Data_Addr					0x01800000
#define XSLCR_BASEADDR					0xF8000000U
#define XSLCR_LOCK_ADDR				    (XSLCR_BASEADDR + 0x00000004U)
#define XSLCR_UNLOCK_ADDR				(XSLCR_BASEADDR + 0x00000008U)
#define XSLCR_FPGA_RST_CTRL_ADDR        (XSLCR_BASEADDR + 0x00000240U)
#define XSLCR_LOCK_CODE		    		0x0000767BU
#define XSLCR_UNLOCK_CODE				0x0000DF0DU

uint8_t ADC_Data[200*1024*1024/8];
u32 uiIdx = 0;
struct tcp_pcb *pcb;
extern struct tcp_pcb *serpcb;
int data[2];
int num = 0;
uint8_t recv_flag = 0;
int data_buf[32768/4];

int transfer_data() {
	return 0;
}

void print_app_header()
{
#if (LWIP_IPV6==0)
	xil_printf("\n\r\n\r----- ad9238_ddr3_tcp ------\n\r");
#else
	xil_printf("\n\r\n\r-----lwIPv6 TCP echo server ------\n\r");
#endif
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	int read_adc_data = 0;
	int i;
	uiIdx = 0;

	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);

	//reset FCLK_CLK
	Xil_Out32(XSLCR_UNLOCK_ADDR, XSLCR_UNLOCK_CODE);
    Xil_Out32(XSLCR_FPGA_RST_CTRL_ADDR, 0x0F);
    usleep(10);
    Xil_Out32(XSLCR_FPGA_RST_CTRL_ADDR, 0x00);
    Xil_Out32(XSLCR_LOCK_ADDR, XSLCR_LOCK_CODE);

    usleep(100);
	/* echo back the payload */
	/* in this case, we assume that the payload is < TCP_SND_BUF */
	if (tcp_sndbuf(tpcb) > p->len) {
		for(i=0;i<4;i++){
			data[0] = htonl(Xil_In32(p->payload+8*i));
			data[1] = htonl(Xil_In32(p->payload + 8*i+4));
			ETH_RECEIVE_CMD_mWriteReg(XPAR_ETH_RECEIVE_CMD_0_S00_AXI_BASEADDR,ETH_RECEIVE_CMD_S00_AXI_SLV_REG0_OFFSET,data[0]);
			ETH_RECEIVE_CMD_mWriteReg(XPAR_ETH_RECEIVE_CMD_0_S00_AXI_BASEADDR,ETH_RECEIVE_CMD_S00_AXI_SLV_REG1_OFFSET,data[1]);
			if((data[0] & 0xFF00) == 0x200){
				num = (data[0] & 0xFF)|((data[1]&0xFFFFFF00)>>8);
				num = num*2;
			}
		}
//		err = tcp_write(tpcb, p->payload, p->len, 1);
	} else
		xil_printf("no space in tcp_sndbuf\n\r");

	while(!read_adc_data) {
		read_adc_data = ETH_RECEIVE_CMD_mReadReg(XPAR_ETH_RECEIVE_CMD_0_S00_AXI_BASEADDR,ETH_RECEIVE_CMD_S00_AXI_SLV_REG3_OFFSET);
	}

	recv_flag = 1;

	/* free the received pbuf */
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
