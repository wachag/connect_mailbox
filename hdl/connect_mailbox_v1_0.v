
`timescale 1 ns / 1 ps

module connect_mailbox_v1_0 #
		(
		// Users to add parameters here
		parameter integer C_FLIT_WIDTH=39,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
		)
		(
		// Users to add ports here
		// BRAM interface
		output wire [31:0] bram_addr_a,
		output wire bram_clk_a,
		output wire [31:0] bram_wrdata_a,
		input wire [31:0] bram_rddata_a,
		output wire bram_en_a,
		output wire bram_rst_a,
		output wire [3:0] bram_we_a,

		// CONNECT interface: send flit
		output  wire [C_FLIT_WIDTH -1: 0] send_ports_putFlit_flit_in,
		output  wire EN_send_ports_putFlit,
		output  EN_send_ports_getNonFullVCs,
		input [1 : 0] send_ports_getNonFullVCs,
		
		// CONNECT interface: receive flit
		output  EN_recv_ports_getFlit,
		input [C_FLIT_WIDTH-1 : 0] recv_ports_getFlit,
		output  [1 : 0] recv_ports_putNonFullVCs_nonFullVCs,
		output  EN_recv_ports_putNonFullVCs,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		output wire s00_axi_intr,
		input wire  s00_axi_rready
		);
	// Instantiation of Axi Bus Interface S00_AXI
	connect_mailbox_v1_0_S00_AXI # ( 
			.C_FLIT_WIDTH(C_FLIT_WIDTH),
			.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
			.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
		) connect_mailbox_v1_0_S00_AXI_inst (
			.S_AXI_ACLK(s00_axi_aclk),
			.S_AXI_ARESETN(s00_axi_aresetn),
			.S_AXI_AWADDR(s00_axi_awaddr),
			.S_AXI_AWPROT(s00_axi_awprot),
			.S_AXI_AWVALID(s00_axi_awvalid),
			.S_AXI_AWREADY(s00_axi_awready),
			.S_AXI_WDATA(s00_axi_wdata),
			.S_AXI_WSTRB(s00_axi_wstrb),
			.S_AXI_WVALID(s00_axi_wvalid),
			.S_AXI_WREADY(s00_axi_wready),
			.S_AXI_BRESP(s00_axi_bresp),
			.S_AXI_BVALID(s00_axi_bvalid),
			.S_AXI_BREADY(s00_axi_bready),
			.S_AXI_ARADDR(s00_axi_araddr),
			.S_AXI_ARPROT(s00_axi_arprot),
			.S_AXI_ARVALID(s00_axi_arvalid),
			.S_AXI_ARREADY(s00_axi_arready),
			.S_AXI_RDATA(s00_axi_rdata),
			.S_AXI_RRESP(s00_axi_rresp),
			.S_AXI_RVALID(s00_axi_rvalid),
			.S_AXI_RREADY(s00_axi_rready),
			.S_AXI_INTR(s00_axi_intr),
			.bram_addr_a(bram_addr_a),
			.bram_clk_a(bram_clk_a),
			.bram_wrdata_a(bram_wrdata_a),
			.bram_rddata_a(bram_rddata_a),
			.bram_en_a(bram_en_a),
			.bram_rst_a(bram_rst_a),
			.bram_we_a(bram_we_a),
			.send_ports_putFlit_flit_in(send_ports_putFlit_flit_in),
			.EN_send_ports_putFlit(EN_send_ports_putFlit),
			.EN_send_ports_getNonFullVCs(EN_send_ports_getNonFullVCs),
			.send_ports_getNonFullVCs(send_ports_getNonFullVCs),
			.EN_recv_ports_getFlit(EN_recv_ports_getFlit),
			.recv_ports_getFlit(recv_ports_getFlit),
			.recv_ports_putNonFullVCs_nonFullVCs(recv_ports_putNonFullVCs_nonFullVCs),
			.EN_recv_ports_putNonFullVCs(EN_recv_ports_putNonFullVCs)
		);

	// Add user logic here

	// User logic ends

	endmodule
