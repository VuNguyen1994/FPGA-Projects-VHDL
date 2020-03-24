// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Nov 21 15:39:16 2019
// Host        : DESKTOP-GPB4UIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_accum_0_sim_netlist.v
// Design      : c_accum_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_accum_0,c_accum_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_13 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_13
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_13_viv i_synth
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
CHGmmoeB2NGpjHnLhDnvfL6eq66b57UFEw2WfGVTRv6PDC1VmVas9LzCRXRa+qZk1kpF+cWkEZR6
N1KA2xqH69U0SmVHBbD5Rrh3d/DLSUdbE0rsUN9DITBxClFGsKsCTSnncTNnUq/04EVf06Zgb0sV
iEuiVYIhfP20UjV1P/ddvzDpn0t3UPPk/d99kehs5c9CDUCF77yL38+sAdUfdKcCOfVexUGrV6mG
Gll/9U5pXiIZmU64LDUih8M9W4yRAfavYfclM7e6/fRvn6mzBvVK0rDN8Z//BUo+uUwJlnyl5vAe
GsT9ovdSNTZqjQKjusYE1g69yUGtwQFoWagjRw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ODIWrC5ZJsI+RMCAiVKjFCGa3g5q1Fm6aU0bBN6IMkQ4N0h4trvNk9xdo5jPsBVLjLQFGF5Nkdm9
Zm61qW2YhgVdAYYuI6NtGZgroVhLqREmTsii9poW5pWGFEoBdy9blybASl67Wbq2Qkne79ccFPPm
jbTYbjgqk9iyzepXEMw7CtaNWtgnoqnOTI0s7lAfLm9RBVufBBBYFs5OlX51cwETdjqysznvdFoI
1IyC83nSOGO74mbDNAXawzse54uAFl9Zy76NzLvWuFJxNA8j3qJj2VwiGuIThfmbb7lzqxYw8cbC
6QJZf2/GEH7OaNFY6SNDNl0uSpOaMePYn3TVsA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9296)
`pragma protect data_block
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
BjfXJpw=
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
