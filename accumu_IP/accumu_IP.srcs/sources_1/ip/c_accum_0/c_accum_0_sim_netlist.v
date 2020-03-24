// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Nov 21 15:39:17 2019
// Host        : DESKTOP-GPB4UIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DrexelStudy/ECE302/accumu_IP/accumu_IP.srcs/sources_1/ip/c_accum_0/c_accum_0_sim_netlist.v
// Design      : c_accum_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_accum_0,c_accum_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module c_accum_0
   (B,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire [3:0]B;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_accum_0_c_accum_v12_0_13 U0
       (.ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "8" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_accum_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_accum_0_c_accum_v12_0_13
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire [3:0]B;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_accum_0_c_accum_v12_0_13_viv i_synth
       (.ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dSeZRmSWebtpOR1O9c+IDTdlMH9/1hro8PqDVDl27v005C5MqyZKeYNm9mMQ4XxWPZxFv87c3Z4n
5Uz6xaUmaA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C1X6j2CN/BrcCWflKLlsg+cM+rksMcYf4EY7flfh0J07Kd6Yz1U8b4CQa6qGoE2Y/wXsD6+gLu1B
2quOLx5FDsX7IQ01fo4Wy5qqUx/igSc9hpspjPHf2g+aIJkObQiq+MmJ+KTB+Mr045wlFkkQImp+
nDfZhNfvYWVtC9yy0Mg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HjLqlbAvfCfrXjMuBZHqAXPJS1vFnuk4uVIm/P79GrZZ9F4hFvwWw6h/Zebc7LHBZ8aDoz2nqBGS
agpUUi5a/7KL6U7zc4JR+FiGSOstAhOnchiAjnOL/ldhpQkZIkSQSTy9sflsdb5yUdL0uPtUDYKm
JiJ+7sIur9MpneraAAsadcSxH8JIj82UxvxsEWic+lRUQBGZFYyW0a0weg1TJA3+efxfenYDiODb
8jzwBuRuSugqAtIDl3yWQJ9IcNkG+CU+BGRm90QOw588wfIZH03ujkyY04caLofICJJNQUmw+DM1
VDUxFyWr5tAkQVtSuA6xeiwuyy2I65doiiKY6w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jBvJHqZCB59aFpCz1IePy4RYqbdYJK8+fPkLRFZsA/PaDkJTn3Hl79AMa4nnyc/JiDyDTouUur+B
wq9KbIkwWHA+V1GYoCQNsRGcXLp203F8xGa0WwDCMkQ61DI8d+vX/vCNY6WtVir5NydV3RPPeiNF
noQc9J8fdyNdBk8Dxycu9m0M6hA7pKxhqzaHGTgDfbTL5nSSisEctrk7xIKxRZfDEOjb/HgQrPu8
PxKjuK+PWdRbd2TYDPTYnN2aSVMTc6FECz/tkuEDTDbHOolKjwwgmUiTQnpnNMkoUeVX0sUgETZ0
PKLh1yOIslZFd3mse8z6tXWAOjf/rOzL2t0EsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wfi1Xoi9/LK5icaWPECZ2+1JTGzZYnEl3d+vB8OHM+D4/fOHr3MHHVZ0qGciPepgRoPPmPsVwn9B
ArC5SHMlmrWWF5Z9WanD8/2Yrj5Bi3kpeZ37ays2Rv60e/FbcLgpzFehbdd70uh20kKd41JucKIG
Pqqwd9WOovku5RQDI9cmBTOzshupNa5+d+mxjOcVuX6Z0iiYgrqSoYVsnRBBn5gTC/QcQpo+5G9C
ns/bzHveQR1VYA6IFM4GmlqKjaDc2w1jfg/FWtasz5yKFmkAp373q/uDiliz3SkRfXw+ciWt0WEu
xoNuMpdlbRqGAogaFMBPgBhHYDT6o1aa76AXTQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DMUDPZjwKoonOS0VVbYtITWEUX/2WEHTClm1HjCk/vPm2O3Uvu+dFPKkbyVwsC4FU4hlJRDwWfgC
oaXUKoljsM4sDKmfg7+qAjFuZJq5zk0fZyjAT8T/ZLfQ6BlQ5ARAZJrb6mZr1VppAca86m3l0Qdv
ngH/g/XldqQKrARLx4Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C7PFVsZigY1uTEEQM+/f4IwFmUMcqTrhsXoxQyu0ggdL9ucOj1dbj+YWrUORvE5egEx49rO56kTw
tDIj4NUh+zIDEY+ZVj9luOJ0+6xsEPBCJrz7XamiG0StFGzjnZF/DhB6wjRraeouE/H3ANL9I7r8
dOj5uvd06ApE35mLiFBo6gsfno83mSOasT0ZH4dVuOH4l0Y2v8BrhyMvhYbUsCZQK3X0uembZyhz
VjqiMeFRF3MGpFD3QZHvnui8DK0HgE0ax9Y0wqriLLm6qBX91UKKcgItKLtWuQF3rEV5jxZJjv9j
jJUEjk4e+X6nMNcMTB0QaLYW6kr5oAuebhwiyw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h0h0yS+XID5Zbzp+1EQQBj7m5mO/tI2Ru29qef4Lh5Y7ofJlhS6LLkQMGt9sNm4MvLBNO9Fpb/M3
Fs4iinuWHFGyGk/ZaoDY4AMUAWXRzB/SW8EjXV7qbRiG2Jfvtu1WQKiDbK4C50ulfI0M1ZhbBMqL
VIHlgE3x1oVpeHyfNQv0GdibGa88ATqUlq1RbSeFDwBRAcAHrBRuWcfBRTzZBEglrVoHEpcyWJiD
V+mijHrNnoAQBS2wFuvegLqZL2xHhlkDPNiLgPe7pyY+zN5+TdCGj0Dambk6qXzQNAumsXboVcIe
nXF9PMRQDY3duSG8F//JEIjvXIVcWEVISJGW7g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
naReWKnzH38A+X2tdp2hLTAPO4Ck/gg7JmWDINnTzy0h0XGODcXj9T/yvqNc8rZFbgBfehqyfM/l
KbRyiSlZ2aoLJbFKRDPehQPVzZNzyBrVjdJZfnzPZWcIB/V2BfG4iFTNPoqqT1BQSr9YHEqopWZB
IRFX90BtKV4OI6NuyP2+WNTWzicTe4WybjVo8XzwSdSXBhfDIL9o1sSiKUyp0hGAHgNpa7M+IXad
uoWFkoczj/+MvxXM1wN8nou4bkGwN4LF1CbVfzldA/BlRveaTt6wQfJI+vuMn0NC8RFhurctK4gq
LxAL9V9BD2jkphHqiC5dJcZLS4XGTVkI5Frx9w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9232)
`pragma protect data_block
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
`pragma protect end_protected
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
