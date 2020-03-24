// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Nov 21 15:39:17 2019
// Host        : DESKTOP-GPB4UIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/DrexelStudy/ECE302/accumu_IP/accumu_IP.srcs/sources_1/ip/c_accum_0/c_accum_0_stub.v
// Design      : c_accum_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_13,Vivado 2019.1" *)
module c_accum_0(B, CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[3:0],CLK,SCLR,Q[7:0]" */;
  input [3:0]B;
  input CLK;
  input SCLR;
  output [7:0]Q;
endmodule
