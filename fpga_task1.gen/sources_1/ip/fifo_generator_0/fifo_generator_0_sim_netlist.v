// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Fri Nov 24 17:01:22 2023
// Host        : vladimir running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vladimir/newdisk2/VivadoProjects/fpga_task1/fpga_task1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    wr_ack,
    overflow,
    empty,
    valid,
    underflow,
    wr_rst_busy,
    rd_rst_busy);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  output wr_ack;
  output overflow;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output underflow;
  output wr_rst_busy;
  output rd_rst_busy;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire underflow;
  wire valid;
  wire wr_ack;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "1" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "1" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "1" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "510" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(overflow),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(underflow),
        .valid(valid),
        .wr_ack(wr_ack),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Uus+5g3Fts6ofehbTlGvCWP47ZUO4Iguts10nwWKrrDCnmsKa0ECOFAy/6mqYixli8+MQiv36nW7
/i00MI/aOdL5Bnv7lIG8IKDhQU26Y0bwz+LQ8JdFuk+yoPzP3KSeDflyhZYqW+F1mMe76Z1rKxpm
NKBrJNbZx9pDDnUS99Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MjhF8pcXDmDHbm3qaKwAoW7xraCAj9OKmQsxF9ez58Q1MBQmQ478ZxYQkHS7BgJ8jBjXuEVawhYE
RXXrl2Vh9LdUmrzHoIXf/7/0O8zwhvqGXZlBJvufZPjkW+kT2DV0zifiTSX/MtiLKEkjwrDOwdPw
eQ2VXS1M6bP+Fdv/EZtrQu+O6rr/z8rKbDnwlpS07oAAFNo9whhRhTyGODGiHXHvEt9aEmwggTe4
69Kzr3fkuDSbVmZuu9PSi/LMLdlx8wBbTY5dNNoD7dbmKs/lS8cyJHdH4o5HtFB3C+8TTd/+tS5n
wZBB2jesSLZ9tn0xfDf59P50VDr2XuQhTu0gtA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WgIQovaPdeSINbxJR137BKZONMNArLTTEi/M2ur2lEjx6z6OBuKH5q80CRzC4EYDDe6jUXzKWFDu
81B03qnuBmJaePVrwKDN5+8u99JrU5kQaFyFrQTWY2Z8nEt4zMvYeOHOve66lP+jPK2QItaVblAY
XbhtjP+k6pZCb/IRcRc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YD7Tl5QfW9Ui8DCiXtaE8D5ZIKMluUXQGhmoMiq6ZO2KSI9h6Ro9aoSFdKZWX6lCbhqBo9FUrcy0
uH7NQ9YbCY43K8tJE8tbFYzJxOmmHphtV7vSkjSl9HinJXduSqG5SfRjXhN7DUAlYw/QvHBhgUO3
YwZJso8yfud7CbV1HNEcwGwqXEwsGFdkE6bTiUhRnA9Sbof8jjC/qnZtL9qB3F7SHSONAp4yEUkt
t2zKOJsTQ1BbdYhkdSK4tU8C0hGDpCEl8foBaTj8wARxmwoB98XfsLW359Rc1/Cyo1FjSyA9yiYz
CJsstysstNZDK4UkQMreL/vFqi+PxPgf6cCd9w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NDZIPYFfy5fHOyzo3Wvc+H6hGcMX/P2lLOQCrUCDKgWjBGN6qxCdHPt1E3UKOUWIisbvG/y2kR2e
lMxrLh2Am52VyNGgcKpQwnqw7eXa7+7xvN+Jo11Q1DRbu+NCAFEicO3kbrl48gTPAPhOW5LM7eA2
hZRbCh4SawXFUSOshB/ZJ9/ytC5fO0WCXXV6w0JjN5+rkDg401K4uq8xD4e84GVmnE5GUAfliRXm
W3urevu5NlqqRbGfuX0Yhf83nZnzIHe4PxFqnvtA7+BtSIGzgFiD8OqbV6+nRweKJRcdrx132aph
AoQtianVEl1M8EAP5CNzJAUfMvkkhMRU2x+WtA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ttaeY1lqndtl71pfmwuj1l1gkilLl3f5JV8o3KrBbi/MoHNXAw51rhKtwIQN5JMGkXNAq1kZyGmw
wfnBzWYlAxQE++8sDBT/lxMFxwK9TLDRjMA2veyUqZekotMyLr6d5jf7DgLHCM2cXo9TziodEX6R
o0vGAZjsBlNys+6jGfJbtdV8SCuAlc0I4z9p0boiUCidiK/avjWoktlxrQf1L9g1LZYdk1aRWr/r
hRVHSNpbPLPKSgbHsx6noNv3dgB2mfhn9jhmlmYxV7N5L+d1aoG4VKoY8gUkgypD0PthTdXpweFl
EObdkZWgp0s91R37yUiGaMhImifGXLT2TmvWcg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xjh/r+uTIFLK1SUOPho9ZPs/oSNalRX+tpCee/BF80wWUXHxPNNIFfPbhrb5Ppm3iEtrNdI5DLRI
0tjaQNPbzdLVasl11GmsykNWzFFsvFxpFj7FYoGMg9QXQ+eT+V0zHbYMSapoSEKGOkdAC/UB8Cys
JxI58H0p8bLI3k0lZp9bTmnvhQqPdYGwLQCb2WsrplhqUtEumZjMcDjl4805ti1AZn5/ADeauued
Yo1NJOUajSC26cFNfwkugV4pVY67Lxk4tZPvHKNbu/qlVhdtJswY4bWKFxZutnAnXmo8S5nFwwEV
JNXYgpVDS07Cue7sbfuxNcNJFvsj6AwVEYNUNw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HsJKFyC7O8ipZYjpbPgzgOY1jcqskM/gO40stsMiM1axRuoFUxObJUt2hfCUSRNCPGcNO1F/k5sQ
YRkxxGWGkipZ+SNKhaOeg1KPWPOyKulujFtq1r64yeL9JT24FMoPBllBlpowEJW2rhYR8ZlWfZra
FfoGFR0l2YzhaeCfNwxUC4ipvZ64nViLxOqoX5r82UyusSDrPfqHu+sw2dmI0qIOe6Krpjgb0kvl
O+UFZqiv9YUgV0mrWsCOYt7y+jtTQJXRkUax3IbEk2EjOoMmQYwXf+x+Fay+Ed2L1weAiKUhgcqj
r7Y9moK51yRXg5LeoQCkNYG50Aw14aC0/I6frAQLjU6fip4iHHXe2RdL0v2xKvLh4X9buAKWic0X
mzA6XFlqEIlNKwo55UbQkTtkWgLwJxeydfCgAOeffrK6Ls2/4a2oneFZbKMNXe9GU4B8AZBZqhla
9MIcb3bCI75UlkW5iI5SB8R/eT/qvrL3yo+JpH6QS7RRXQVgEkwcPrz7

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XhWAwLXQiQzRNHMj075cYascgsaaVmImnIfShSSdw3P5BkCWWmhosk5iLRi/nFtxUTXJuO2ST73Z
EuKgr6/PAqe2+AN48tbN2MKOLx+RKrgqzckIqKWA2gp974Fs/VXaPvr2TnlZ3QkOXqFYvx5UcOI0
PDcRse59FDAYbBIPtS2sw0//yQyHEoKf+D2tIvVNwHyXylR2Oko+g07H/jX5+xx/yuQg29ctBI/m
8vhIbJMnPIEs6AaWbll/KI4pfVEV2TE36xgAWxtyWcx/O9wCJzzri4VIQ/WuagIWoydOMKPISdih
IpmPuVDzuPwInDZfBse7K5fixLpWr1DmvJx7cg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sCbhosRvV5loCfp2CX5UW6G9dA98Fobzy39VERO4hPN82wRKr7i0hyc2W9kSdV3tifArfeuGK+hN
e9a6qR3mx5a2IrDDjAcEtVchIDpVVJLANzyh7qwTqBXDW/QRSPi3F5pA/YLWK9hePfmya4/jccvE
uKl38Z9x0Ag/YCb6H5BQKuS6O0s383I+FSzOTS0Sxpu+7L3Yr5kP8prRGIP1qD6zMgG6uKJj3HF9
omstvh1F3q5YMgScMd7v1MZWsZELgUQDktPhSt7HUUHogq2aZQYl7x3riganBKoQKZ13A9Iex2ky
qTF3cIrtAz6ZLK4ND+RBseQdbcm7l6h5GALeCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P9Ji+GKT738MP7o8TaU+mDFK4pwND49sGVKlSEKVKYxfXQEpCgR3QoVlcWyNhPWFVCBRkAYfaXDX
w0WOnd+KAWMuSDiTgtIpjKHzomg6DvwzJONdE94jHt48fL/q3itgN6pxVY7sU6Bo7xJ0oFjBhGEx
7AY1YLKCoR95jGRnMi1K/OcvN2r3aLyVD4CZBm6xRydif1UrumV6WgSEP7wrQo64lc2+HShIad9x
RbARl/mCcH9mF8W1q5/Gp1LU3RiCnqrMA3tnN2mL3BLWKWJ3bHPQIGFb+eKzCFcksrNNuZW9I+F/
N+Q2f3PL3cVGpFzWMzIBCYLuA6RWNCw/62lOhw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54848)
`pragma protect data_block
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
trVspFjmLEremVIQuUw=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
