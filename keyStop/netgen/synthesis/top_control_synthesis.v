////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_control_synthesis.v
// /___/   /\     Timestamp: Thu Dec  4 19:43:12 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top_control.ngc top_control_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: top_control.ngc
// Output file	: /home/kv/EE 324/keyStop/netgen/synthesis/top_control_synthesis.v
// # of Modules	: 1
// Design Name	: top_control
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top_control (
  kbClk, kbData, clk, clr, dec, seg, anode
);
  input kbClk;
  input kbData;
  input clk;
  input clr;
  output dec;
  output [7 : 0] seg;
  output [3 : 0] anode;
  wire kbClk_IBUF_0;
  wire kbData_IBUF_1;
  wire clk_BUFGP_2;
  wire clr_IBUF_3;
  wire \U1/count_0_BUFG_12 ;
  wire seg_6_OBUF_13;
  wire seg_5_OBUF_14;
  wire seg_4_OBUF_15;
  wire seg_3_OBUF_16;
  wire seg_2_OBUF_17;
  wire seg_1_OBUF_18;
  wire seg_0_OBUF_19;
  wire anode_2_OBUF_20;
  wire anode_1_OBUF_21;
  wire anode_0_OBUF_22;
  wire dec_OBUF_23;
  wire current_FSM_FFd1_26;
  wire current_FSM_FFd2_27;
  wire \key[7]_GND_1_o_equal_2_o ;
  wire N0;
  wire \current_FSM_FFd2-In ;
  wire \current_FSM_FFd1-In ;
  wire _n0177_inv;
  wire Mcount_count0;
  wire Mcount_count01;
  wire Mcount_count02;
  wire Mcount_count03;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire Mram_startTimer;
  wire Mcount_ticker_val;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire \Result<3>2 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<16>1 ;
  wire Reset_OR_DriverANDClockEnable;
  wire \key[7]_GND_1_o_equal_37_o<7>1_163 ;
  wire \key[7]_GND_1_o_equal_17_o ;
  wire \key[7]_GND_1_o_equal_16_o ;
  wire Reset_OR_DriverANDClockEnable1_166;
  wire \key[7]_GND_1_o_equal_37_o ;
  wire \U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT11_168 ;
  wire \U2/state_FSM_FFd1-In ;
  wire \U2/state_FSM_FFd2-In ;
  wire \U2/state_FSM_FFd3-In ;
  wire \U2/state_FSM_FFd4-In ;
  wire \U2/_n0170_inv ;
  wire \U2/_n0184_inv ;
  wire \U2/_n0177_inv ;
  wire \U2/val2[7]_PWR_3_o_equal_31_o ;
  wire \U2/val1[7]_PWR_3_o_equal_32_o ;
  wire \U2/bCount[3]_PWR_3_o_LessThan_35_o ;
  wire \U2/_n0103 ;
  wire \U2/_n0107 ;
  wire \U2/state[3]_bCount[3]_wide_mux_46_OUT<0> ;
  wire \U2/state[3]_bCount[3]_wide_mux_46_OUT<1> ;
  wire \U2/state[3]_bCount[3]_wide_mux_46_OUT<2> ;
  wire \U2/state[3]_bCount[3]_wide_mux_46_OUT<3> ;
  wire \U2/kbDataF_217 ;
  wire \U2/kbClkF_218 ;
  wire \U2/state_FSM_FFd4_219 ;
  wire \U2/state_FSM_FFd3_220 ;
  wire \U2/state_FSM_FFd2_221 ;
  wire \U2/state_FSM_FFd1_222 ;
  wire \click<18>1_232 ;
  wire \click<18>2_233 ;
  wire N01;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire Reset_OR_DriverANDClockEnable2_240;
  wire Reset_OR_DriverANDClockEnable3_241;
  wire Reset_OR_DriverANDClockEnable4_242;
  wire N12;
  wire \U2/state_FSM_FFd4-In2_244 ;
  wire \U2/state_FSM_FFd4-In3_245 ;
  wire N14;
  wire N16;
  wire \U1/Mcount_count_cy<1>_rt_265 ;
  wire \U1/Mcount_count_cy<2>_rt_266 ;
  wire \U1/Mcount_count_cy<3>_rt_267 ;
  wire \U1/Mcount_count_cy<4>_rt_268 ;
  wire \U1/Mcount_count_cy<5>_rt_269 ;
  wire \U1/Mcount_count_cy<6>_rt_270 ;
  wire \U1/Mcount_count_cy<7>_rt_271 ;
  wire \U1/Mcount_count_cy<8>_rt_272 ;
  wire \U1/Mcount_count_cy<9>_rt_273 ;
  wire \U1/Mcount_count_cy<10>_rt_274 ;
  wire \U1/Mcount_count_cy<11>_rt_275 ;
  wire \U1/Mcount_count_cy<12>_rt_276 ;
  wire \U1/Mcount_count_cy<13>_rt_277 ;
  wire \U1/Mcount_count_cy<14>_rt_278 ;
  wire \U1/Mcount_count_cy<15>_rt_279 ;
  wire \U1/Mcount_count_cy<16>_rt_280 ;
  wire \Mcount_ticker_cy<1>_rt_281 ;
  wire \Mcount_ticker_cy<2>_rt_282 ;
  wire \Mcount_ticker_cy<3>_rt_283 ;
  wire \Mcount_ticker_cy<4>_rt_284 ;
  wire \Mcount_ticker_cy<5>_rt_285 ;
  wire \Mcount_ticker_cy<6>_rt_286 ;
  wire \Mcount_ticker_cy<7>_rt_287 ;
  wire \Mcount_ticker_cy<8>_rt_288 ;
  wire \Mcount_ticker_cy<9>_rt_289 ;
  wire \Mcount_ticker_cy<10>_rt_290 ;
  wire \Mcount_ticker_cy<11>_rt_291 ;
  wire \Mcount_ticker_cy<12>_rt_292 ;
  wire \Mcount_ticker_cy<13>_rt_293 ;
  wire \Mcount_ticker_cy<14>_rt_294 ;
  wire \Mcount_ticker_cy<15>_rt_295 ;
  wire \U1/Mcount_count_xor<17>_rt_296 ;
  wire \Mcount_ticker_xor<16>_rt_297 ;
  wire \U2/kbDataF_rstpot_298 ;
  wire \U2/kbClkF_rstpot_299 ;
  wire count1_0_dpot_300;
  wire count1_1_dpot_301;
  wire count1_2_dpot_302;
  wire count1_3_dpot_303;
  wire _n0204_inv1_rstpot_304;
  wire count2_0_dpot_305;
  wire count2_1_dpot_306;
  wire count2_2_dpot_307;
  wire count2_3_dpot_308;
  wire N18;
  wire N19;
  wire N20;
  wire N21;
  wire N23;
  wire N24;
  wire _n0228_inv_rstpot_315;
  wire count3_3_dpot_316;
  wire N26;
  wire count3_0_rstpot_318;
  wire count3_0_rstpot1_319;
  wire count3_1_rstpot1_320;
  wire count3_2_rstpot1_321;
  wire count3_3_rstpot_322;
  wire [7 : 0] \U2/val1 ;
  wire [1 : 0] sel;
  wire [3 : 0] count0;
  wire [3 : 0] count1;
  wire [3 : 0] count2;
  wire [17 : 0] ticker;
  wire [1 : 0] selNext;
  wire [17 : 0] \U1/count ;
  wire [17 : 4] Result;
  wire [3 : 0] count3;
  wire [0 : 0] \U1/Mcount_count_lut ;
  wire [16 : 0] \U1/Mcount_count_cy ;
  wire [0 : 0] Mcount_ticker_lut;
  wire [15 : 0] Mcount_ticker_cy;
  wire [3 : 0] \U2/bCount ;
  wire [7 : 0] \U2/val2 ;
  wire [10 : 1] \U2/sh2 ;
  wire [10 : 1] \U2/sh1 ;
  wire [3 : 0] \U2/kbClk_filter ;
  wire [3 : 0] \U2/kbData_filter ;
  wire [18 : 18] click;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(ticker[17])
  );
  FDR   sel_0 (
    .C(clk_BUFGP_2),
    .D(selNext[0]),
    .R(\key[7]_GND_1_o_equal_2_o ),
    .Q(sel[0])
  );
  FDR   sel_1 (
    .C(clk_BUFGP_2),
    .D(selNext[1]),
    .R(\key[7]_GND_1_o_equal_2_o ),
    .Q(sel[1])
  );
  FDRE   count2_0 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count2_0_dpot_305),
    .R(clr_IBUF_3),
    .Q(count2[0])
  );
  FDRE   count2_1 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count2_1_dpot_306),
    .R(clr_IBUF_3),
    .Q(count2[1])
  );
  FDRE   count2_2 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count2_2_dpot_307),
    .R(clr_IBUF_3),
    .Q(count2[2])
  );
  FDRE   count2_3 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count2_3_dpot_308),
    .R(clr_IBUF_3),
    .Q(count2[3])
  );
  FDR   current_FSM_FFd2 (
    .C(clk_BUFGP_2),
    .D(\current_FSM_FFd2-In ),
    .R(\key[7]_GND_1_o_equal_2_o ),
    .Q(current_FSM_FFd2_27)
  );
  FDR   current_FSM_FFd1 (
    .C(clk_BUFGP_2),
    .D(\current_FSM_FFd1-In ),
    .R(\key[7]_GND_1_o_equal_2_o ),
    .Q(current_FSM_FFd1_26)
  );
  FDRE   count0_0 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(Mcount_count0),
    .R(clr_IBUF_3),
    .Q(count0[0])
  );
  FDRE   count0_1 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(Mcount_count01),
    .R(clr_IBUF_3),
    .Q(count0[1])
  );
  FDRE   count0_2 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(Mcount_count02),
    .R(clr_IBUF_3),
    .Q(count0[2])
  );
  FDRE   count0_3 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(Mcount_count03),
    .R(clr_IBUF_3),
    .Q(count0[3])
  );
  FDRE   count1_0 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count1_0_dpot_300),
    .R(clr_IBUF_3),
    .Q(count1[0])
  );
  FDRE   count1_1 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count1_1_dpot_301),
    .R(clr_IBUF_3),
    .Q(count1[1])
  );
  FDRE   count1_2 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count1_2_dpot_302),
    .R(clr_IBUF_3),
    .Q(count1[2])
  );
  FDRE   count1_3 (
    .C(clk_BUFGP_2),
    .CE(_n0177_inv),
    .D(count1_3_dpot_303),
    .R(clr_IBUF_3),
    .Q(count1[3])
  );
  FDRE   ticker_0 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<0>2 ),
    .R(Mcount_ticker_val),
    .Q(ticker[0])
  );
  FDRE   ticker_3 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<3>2 ),
    .R(Mcount_ticker_val),
    .Q(ticker[3])
  );
  FDRE   ticker_1 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<1>2 ),
    .R(Mcount_ticker_val),
    .Q(ticker[1])
  );
  FDRE   ticker_2 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<2>2 ),
    .R(Mcount_ticker_val),
    .Q(ticker[2])
  );
  FDRE   ticker_6 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<6>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[6])
  );
  FDRE   ticker_4 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<4>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[4])
  );
  FDRE   ticker_5 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<5>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[5])
  );
  FDRE   ticker_7 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<7>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[7])
  );
  FDRE   ticker_8 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<8>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[8])
  );
  FDRE   ticker_11 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<11>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[11])
  );
  FDRE   ticker_9 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<9>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[9])
  );
  FDRE   ticker_10 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<10>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[10])
  );
  FDRE   ticker_12 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<12>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[12])
  );
  FDRE   ticker_13 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<13>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[13])
  );
  FDRE   ticker_16 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<16>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[16])
  );
  FDRE   ticker_14 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<14>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[14])
  );
  FDRE   ticker_15 (
    .C(clk_BUFGP_2),
    .CE(Mram_startTimer),
    .D(\Result<15>1 ),
    .R(Mcount_ticker_val),
    .Q(ticker[15])
  );
  FDC   \U1/count_0  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(\Result<0>1 ),
    .Q(\U1/count [0])
  );
  FDC   \U1/count_1  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(\Result<1>1 ),
    .Q(\U1/count [1])
  );
  FDC   \U1/count_2  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(\Result<2>1 ),
    .Q(\U1/count [2])
  );
  FDC   \U1/count_3  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(\Result<3>1 ),
    .Q(\U1/count [3])
  );
  FDC   \U1/count_4  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[4]),
    .Q(\U1/count [4])
  );
  FDC   \U1/count_5  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[5]),
    .Q(\U1/count [5])
  );
  FDC   \U1/count_6  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[6]),
    .Q(\U1/count [6])
  );
  FDC   \U1/count_7  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[7]),
    .Q(\U1/count [7])
  );
  FDC   \U1/count_8  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[8]),
    .Q(\U1/count [8])
  );
  FDC   \U1/count_9  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[9]),
    .Q(\U1/count [9])
  );
  FDC   \U1/count_10  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[10]),
    .Q(\U1/count [10])
  );
  FDC   \U1/count_11  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[11]),
    .Q(\U1/count [11])
  );
  FDC   \U1/count_12  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[12]),
    .Q(\U1/count [12])
  );
  FDC   \U1/count_13  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[13]),
    .Q(\U1/count [13])
  );
  FDC   \U1/count_14  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[14]),
    .Q(\U1/count [14])
  );
  FDC   \U1/count_15  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[15]),
    .Q(\U1/count [15])
  );
  FDC   \U1/count_16  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[16]),
    .Q(\U1/count [16])
  );
  FDC   \U1/count_17  (
    .C(clk_BUFGP_2),
    .CLR(clr_IBUF_3),
    .D(Result[17]),
    .Q(\U1/count [17])
  );
  MUXCY   \U1/Mcount_count_cy<0>  (
    .CI(ticker[17]),
    .DI(N0),
    .S(\U1/Mcount_count_lut [0]),
    .O(\U1/Mcount_count_cy [0])
  );
  XORCY   \U1/Mcount_count_xor<0>  (
    .CI(ticker[17]),
    .LI(\U1/Mcount_count_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \U1/Mcount_count_cy<1>  (
    .CI(\U1/Mcount_count_cy [0]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<1>_rt_265 ),
    .O(\U1/Mcount_count_cy [1])
  );
  XORCY   \U1/Mcount_count_xor<1>  (
    .CI(\U1/Mcount_count_cy [0]),
    .LI(\U1/Mcount_count_cy<1>_rt_265 ),
    .O(\Result<1>1 )
  );
  MUXCY   \U1/Mcount_count_cy<2>  (
    .CI(\U1/Mcount_count_cy [1]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<2>_rt_266 ),
    .O(\U1/Mcount_count_cy [2])
  );
  XORCY   \U1/Mcount_count_xor<2>  (
    .CI(\U1/Mcount_count_cy [1]),
    .LI(\U1/Mcount_count_cy<2>_rt_266 ),
    .O(\Result<2>1 )
  );
  MUXCY   \U1/Mcount_count_cy<3>  (
    .CI(\U1/Mcount_count_cy [2]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<3>_rt_267 ),
    .O(\U1/Mcount_count_cy [3])
  );
  XORCY   \U1/Mcount_count_xor<3>  (
    .CI(\U1/Mcount_count_cy [2]),
    .LI(\U1/Mcount_count_cy<3>_rt_267 ),
    .O(\Result<3>1 )
  );
  MUXCY   \U1/Mcount_count_cy<4>  (
    .CI(\U1/Mcount_count_cy [3]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<4>_rt_268 ),
    .O(\U1/Mcount_count_cy [4])
  );
  XORCY   \U1/Mcount_count_xor<4>  (
    .CI(\U1/Mcount_count_cy [3]),
    .LI(\U1/Mcount_count_cy<4>_rt_268 ),
    .O(Result[4])
  );
  MUXCY   \U1/Mcount_count_cy<5>  (
    .CI(\U1/Mcount_count_cy [4]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<5>_rt_269 ),
    .O(\U1/Mcount_count_cy [5])
  );
  XORCY   \U1/Mcount_count_xor<5>  (
    .CI(\U1/Mcount_count_cy [4]),
    .LI(\U1/Mcount_count_cy<5>_rt_269 ),
    .O(Result[5])
  );
  MUXCY   \U1/Mcount_count_cy<6>  (
    .CI(\U1/Mcount_count_cy [5]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<6>_rt_270 ),
    .O(\U1/Mcount_count_cy [6])
  );
  XORCY   \U1/Mcount_count_xor<6>  (
    .CI(\U1/Mcount_count_cy [5]),
    .LI(\U1/Mcount_count_cy<6>_rt_270 ),
    .O(Result[6])
  );
  MUXCY   \U1/Mcount_count_cy<7>  (
    .CI(\U1/Mcount_count_cy [6]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<7>_rt_271 ),
    .O(\U1/Mcount_count_cy [7])
  );
  XORCY   \U1/Mcount_count_xor<7>  (
    .CI(\U1/Mcount_count_cy [6]),
    .LI(\U1/Mcount_count_cy<7>_rt_271 ),
    .O(Result[7])
  );
  MUXCY   \U1/Mcount_count_cy<8>  (
    .CI(\U1/Mcount_count_cy [7]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<8>_rt_272 ),
    .O(\U1/Mcount_count_cy [8])
  );
  XORCY   \U1/Mcount_count_xor<8>  (
    .CI(\U1/Mcount_count_cy [7]),
    .LI(\U1/Mcount_count_cy<8>_rt_272 ),
    .O(Result[8])
  );
  MUXCY   \U1/Mcount_count_cy<9>  (
    .CI(\U1/Mcount_count_cy [8]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<9>_rt_273 ),
    .O(\U1/Mcount_count_cy [9])
  );
  XORCY   \U1/Mcount_count_xor<9>  (
    .CI(\U1/Mcount_count_cy [8]),
    .LI(\U1/Mcount_count_cy<9>_rt_273 ),
    .O(Result[9])
  );
  MUXCY   \U1/Mcount_count_cy<10>  (
    .CI(\U1/Mcount_count_cy [9]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<10>_rt_274 ),
    .O(\U1/Mcount_count_cy [10])
  );
  XORCY   \U1/Mcount_count_xor<10>  (
    .CI(\U1/Mcount_count_cy [9]),
    .LI(\U1/Mcount_count_cy<10>_rt_274 ),
    .O(Result[10])
  );
  MUXCY   \U1/Mcount_count_cy<11>  (
    .CI(\U1/Mcount_count_cy [10]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<11>_rt_275 ),
    .O(\U1/Mcount_count_cy [11])
  );
  XORCY   \U1/Mcount_count_xor<11>  (
    .CI(\U1/Mcount_count_cy [10]),
    .LI(\U1/Mcount_count_cy<11>_rt_275 ),
    .O(Result[11])
  );
  MUXCY   \U1/Mcount_count_cy<12>  (
    .CI(\U1/Mcount_count_cy [11]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<12>_rt_276 ),
    .O(\U1/Mcount_count_cy [12])
  );
  XORCY   \U1/Mcount_count_xor<12>  (
    .CI(\U1/Mcount_count_cy [11]),
    .LI(\U1/Mcount_count_cy<12>_rt_276 ),
    .O(Result[12])
  );
  MUXCY   \U1/Mcount_count_cy<13>  (
    .CI(\U1/Mcount_count_cy [12]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<13>_rt_277 ),
    .O(\U1/Mcount_count_cy [13])
  );
  XORCY   \U1/Mcount_count_xor<13>  (
    .CI(\U1/Mcount_count_cy [12]),
    .LI(\U1/Mcount_count_cy<13>_rt_277 ),
    .O(Result[13])
  );
  MUXCY   \U1/Mcount_count_cy<14>  (
    .CI(\U1/Mcount_count_cy [13]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<14>_rt_278 ),
    .O(\U1/Mcount_count_cy [14])
  );
  XORCY   \U1/Mcount_count_xor<14>  (
    .CI(\U1/Mcount_count_cy [13]),
    .LI(\U1/Mcount_count_cy<14>_rt_278 ),
    .O(Result[14])
  );
  MUXCY   \U1/Mcount_count_cy<15>  (
    .CI(\U1/Mcount_count_cy [14]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<15>_rt_279 ),
    .O(\U1/Mcount_count_cy [15])
  );
  XORCY   \U1/Mcount_count_xor<15>  (
    .CI(\U1/Mcount_count_cy [14]),
    .LI(\U1/Mcount_count_cy<15>_rt_279 ),
    .O(Result[15])
  );
  MUXCY   \U1/Mcount_count_cy<16>  (
    .CI(\U1/Mcount_count_cy [15]),
    .DI(ticker[17]),
    .S(\U1/Mcount_count_cy<16>_rt_280 ),
    .O(\U1/Mcount_count_cy [16])
  );
  XORCY   \U1/Mcount_count_xor<16>  (
    .CI(\U1/Mcount_count_cy [15]),
    .LI(\U1/Mcount_count_cy<16>_rt_280 ),
    .O(Result[16])
  );
  XORCY   \U1/Mcount_count_xor<17>  (
    .CI(\U1/Mcount_count_cy [16]),
    .LI(\U1/Mcount_count_xor<17>_rt_296 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_ticker_cy<0>  (
    .CI(ticker[17]),
    .DI(N0),
    .S(Mcount_ticker_lut[0]),
    .O(Mcount_ticker_cy[0])
  );
  XORCY   \Mcount_ticker_xor<0>  (
    .CI(ticker[17]),
    .LI(Mcount_ticker_lut[0]),
    .O(\Result<0>2 )
  );
  MUXCY   \Mcount_ticker_cy<1>  (
    .CI(Mcount_ticker_cy[0]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<1>_rt_281 ),
    .O(Mcount_ticker_cy[1])
  );
  XORCY   \Mcount_ticker_xor<1>  (
    .CI(Mcount_ticker_cy[0]),
    .LI(\Mcount_ticker_cy<1>_rt_281 ),
    .O(\Result<1>2 )
  );
  MUXCY   \Mcount_ticker_cy<2>  (
    .CI(Mcount_ticker_cy[1]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<2>_rt_282 ),
    .O(Mcount_ticker_cy[2])
  );
  XORCY   \Mcount_ticker_xor<2>  (
    .CI(Mcount_ticker_cy[1]),
    .LI(\Mcount_ticker_cy<2>_rt_282 ),
    .O(\Result<2>2 )
  );
  MUXCY   \Mcount_ticker_cy<3>  (
    .CI(Mcount_ticker_cy[2]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<3>_rt_283 ),
    .O(Mcount_ticker_cy[3])
  );
  XORCY   \Mcount_ticker_xor<3>  (
    .CI(Mcount_ticker_cy[2]),
    .LI(\Mcount_ticker_cy<3>_rt_283 ),
    .O(\Result<3>2 )
  );
  MUXCY   \Mcount_ticker_cy<4>  (
    .CI(Mcount_ticker_cy[3]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<4>_rt_284 ),
    .O(Mcount_ticker_cy[4])
  );
  XORCY   \Mcount_ticker_xor<4>  (
    .CI(Mcount_ticker_cy[3]),
    .LI(\Mcount_ticker_cy<4>_rt_284 ),
    .O(\Result<4>1 )
  );
  MUXCY   \Mcount_ticker_cy<5>  (
    .CI(Mcount_ticker_cy[4]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<5>_rt_285 ),
    .O(Mcount_ticker_cy[5])
  );
  XORCY   \Mcount_ticker_xor<5>  (
    .CI(Mcount_ticker_cy[4]),
    .LI(\Mcount_ticker_cy<5>_rt_285 ),
    .O(\Result<5>1 )
  );
  MUXCY   \Mcount_ticker_cy<6>  (
    .CI(Mcount_ticker_cy[5]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<6>_rt_286 ),
    .O(Mcount_ticker_cy[6])
  );
  XORCY   \Mcount_ticker_xor<6>  (
    .CI(Mcount_ticker_cy[5]),
    .LI(\Mcount_ticker_cy<6>_rt_286 ),
    .O(\Result<6>1 )
  );
  MUXCY   \Mcount_ticker_cy<7>  (
    .CI(Mcount_ticker_cy[6]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<7>_rt_287 ),
    .O(Mcount_ticker_cy[7])
  );
  XORCY   \Mcount_ticker_xor<7>  (
    .CI(Mcount_ticker_cy[6]),
    .LI(\Mcount_ticker_cy<7>_rt_287 ),
    .O(\Result<7>1 )
  );
  MUXCY   \Mcount_ticker_cy<8>  (
    .CI(Mcount_ticker_cy[7]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<8>_rt_288 ),
    .O(Mcount_ticker_cy[8])
  );
  XORCY   \Mcount_ticker_xor<8>  (
    .CI(Mcount_ticker_cy[7]),
    .LI(\Mcount_ticker_cy<8>_rt_288 ),
    .O(\Result<8>1 )
  );
  MUXCY   \Mcount_ticker_cy<9>  (
    .CI(Mcount_ticker_cy[8]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<9>_rt_289 ),
    .O(Mcount_ticker_cy[9])
  );
  XORCY   \Mcount_ticker_xor<9>  (
    .CI(Mcount_ticker_cy[8]),
    .LI(\Mcount_ticker_cy<9>_rt_289 ),
    .O(\Result<9>1 )
  );
  MUXCY   \Mcount_ticker_cy<10>  (
    .CI(Mcount_ticker_cy[9]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<10>_rt_290 ),
    .O(Mcount_ticker_cy[10])
  );
  XORCY   \Mcount_ticker_xor<10>  (
    .CI(Mcount_ticker_cy[9]),
    .LI(\Mcount_ticker_cy<10>_rt_290 ),
    .O(\Result<10>1 )
  );
  MUXCY   \Mcount_ticker_cy<11>  (
    .CI(Mcount_ticker_cy[10]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<11>_rt_291 ),
    .O(Mcount_ticker_cy[11])
  );
  XORCY   \Mcount_ticker_xor<11>  (
    .CI(Mcount_ticker_cy[10]),
    .LI(\Mcount_ticker_cy<11>_rt_291 ),
    .O(\Result<11>1 )
  );
  MUXCY   \Mcount_ticker_cy<12>  (
    .CI(Mcount_ticker_cy[11]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<12>_rt_292 ),
    .O(Mcount_ticker_cy[12])
  );
  XORCY   \Mcount_ticker_xor<12>  (
    .CI(Mcount_ticker_cy[11]),
    .LI(\Mcount_ticker_cy<12>_rt_292 ),
    .O(\Result<12>1 )
  );
  MUXCY   \Mcount_ticker_cy<13>  (
    .CI(Mcount_ticker_cy[12]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<13>_rt_293 ),
    .O(Mcount_ticker_cy[13])
  );
  XORCY   \Mcount_ticker_xor<13>  (
    .CI(Mcount_ticker_cy[12]),
    .LI(\Mcount_ticker_cy<13>_rt_293 ),
    .O(\Result<13>1 )
  );
  MUXCY   \Mcount_ticker_cy<14>  (
    .CI(Mcount_ticker_cy[13]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<14>_rt_294 ),
    .O(Mcount_ticker_cy[14])
  );
  XORCY   \Mcount_ticker_xor<14>  (
    .CI(Mcount_ticker_cy[13]),
    .LI(\Mcount_ticker_cy<14>_rt_294 ),
    .O(\Result<14>1 )
  );
  MUXCY   \Mcount_ticker_cy<15>  (
    .CI(Mcount_ticker_cy[14]),
    .DI(ticker[17]),
    .S(\Mcount_ticker_cy<15>_rt_295 ),
    .O(Mcount_ticker_cy[15])
  );
  XORCY   \Mcount_ticker_xor<15>  (
    .CI(Mcount_ticker_cy[14]),
    .LI(\Mcount_ticker_cy<15>_rt_295 ),
    .O(\Result<15>1 )
  );
  XORCY   \Mcount_ticker_xor<16>  (
    .CI(Mcount_ticker_cy[15]),
    .LI(\Mcount_ticker_xor<16>_rt_297 ),
    .O(\Result<16>1 )
  );
  FDC   \U2/state_FSM_FFd1  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/state_FSM_FFd1-In ),
    .Q(\U2/state_FSM_FFd1_222 )
  );
  FDC   \U2/state_FSM_FFd2  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/state_FSM_FFd2-In ),
    .Q(\U2/state_FSM_FFd2_221 )
  );
  FDC   \U2/state_FSM_FFd4  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/state_FSM_FFd4-In ),
    .Q(\U2/state_FSM_FFd4_219 )
  );
  FDC   \U2/state_FSM_FFd3  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/state_FSM_FFd3-In ),
    .Q(\U2/state_FSM_FFd3_220 )
  );
  FDCE   \U2/bCount_3  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0170_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/state[3]_bCount[3]_wide_mux_46_OUT<3> ),
    .Q(\U2/bCount [3])
  );
  FDCE   \U2/bCount_2  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0170_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/state[3]_bCount[3]_wide_mux_46_OUT<2> ),
    .Q(\U2/bCount [2])
  );
  FDCE   \U2/bCount_1  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0170_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/state[3]_bCount[3]_wide_mux_46_OUT<1> ),
    .Q(\U2/bCount [1])
  );
  FDCE   \U2/bCount_0  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0170_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/state[3]_bCount[3]_wide_mux_46_OUT<0> ),
    .Q(\U2/bCount [0])
  );
  FDCE   \U2/val2_7  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [8]),
    .Q(\U2/val2 [7])
  );
  FDCE   \U2/val2_6  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [7]),
    .Q(\U2/val2 [6])
  );
  FDCE   \U2/val2_5  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [6]),
    .Q(\U2/val2 [5])
  );
  FDCE   \U2/val2_4  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [5]),
    .Q(\U2/val2 [4])
  );
  FDCE   \U2/val2_3  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [4]),
    .Q(\U2/val2 [3])
  );
  FDCE   \U2/val2_2  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [3]),
    .Q(\U2/val2 [2])
  );
  FDCE   \U2/val2_1  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [2]),
    .Q(\U2/val2 [1])
  );
  FDCE   \U2/val2_0  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0107 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [1]),
    .Q(\U2/val2 [0])
  );
  FDCE   \U2/val1_7  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [8]),
    .Q(\U2/val1 [7])
  );
  FDCE   \U2/val1_6  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [7]),
    .Q(\U2/val1 [6])
  );
  FDCE   \U2/val1_5  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [6]),
    .Q(\U2/val1 [5])
  );
  FDCE   \U2/val1_4  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [5]),
    .Q(\U2/val1 [4])
  );
  FDCE   \U2/val1_3  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [4]),
    .Q(\U2/val1 [3])
  );
  FDCE   \U2/val1_2  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [3]),
    .Q(\U2/val1 [2])
  );
  FDCE   \U2/val1_1  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [2]),
    .Q(\U2/val1 [1])
  );
  FDCE   \U2/val1_0  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0103 ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [1]),
    .Q(\U2/val1 [0])
  );
  FDCE   \U2/sh2_10  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/kbDataF_217 ),
    .Q(\U2/sh2 [10])
  );
  FDCE   \U2/sh2_9  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [10]),
    .Q(\U2/sh2 [9])
  );
  FDCE   \U2/sh2_8  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [9]),
    .Q(\U2/sh2 [8])
  );
  FDCE   \U2/sh2_7  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [8]),
    .Q(\U2/sh2 [7])
  );
  FDCE   \U2/sh2_6  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [7]),
    .Q(\U2/sh2 [6])
  );
  FDCE   \U2/sh2_5  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [6]),
    .Q(\U2/sh2 [5])
  );
  FDCE   \U2/sh2_4  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [5]),
    .Q(\U2/sh2 [4])
  );
  FDCE   \U2/sh2_3  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [4]),
    .Q(\U2/sh2 [3])
  );
  FDCE   \U2/sh2_2  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [3]),
    .Q(\U2/sh2 [2])
  );
  FDCE   \U2/sh2_1  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0184_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh2 [2]),
    .Q(\U2/sh2 [1])
  );
  FDCE   \U2/sh1_10  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/kbDataF_217 ),
    .Q(\U2/sh1 [10])
  );
  FDCE   \U2/sh1_9  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [10]),
    .Q(\U2/sh1 [9])
  );
  FDCE   \U2/sh1_8  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [9]),
    .Q(\U2/sh1 [8])
  );
  FDCE   \U2/sh1_7  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [8]),
    .Q(\U2/sh1 [7])
  );
  FDCE   \U2/sh1_6  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [7]),
    .Q(\U2/sh1 [6])
  );
  FDCE   \U2/sh1_5  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [6]),
    .Q(\U2/sh1 [5])
  );
  FDCE   \U2/sh1_4  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [5]),
    .Q(\U2/sh1 [4])
  );
  FDCE   \U2/sh1_3  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [4]),
    .Q(\U2/sh1 [3])
  );
  FDCE   \U2/sh1_2  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [3]),
    .Q(\U2/sh1 [2])
  );
  FDCE   \U2/sh1_1  (
    .C(\U1/count_0_BUFG_12 ),
    .CE(\U2/_n0177_inv ),
    .CLR(clr_IBUF_3),
    .D(\U2/sh1 [2]),
    .Q(\U2/sh1 [1])
  );
  FDC   \U2/kbClk_filter_3  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(kbClk_IBUF_0),
    .Q(\U2/kbClk_filter [3])
  );
  FDC   \U2/kbClk_filter_2  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/kbClk_filter [3]),
    .Q(\U2/kbClk_filter [2])
  );
  FDC   \U2/kbClk_filter_1  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/kbClk_filter [2]),
    .Q(\U2/kbClk_filter [1])
  );
  FDP   \U2/kbClk_filter_0  (
    .C(\U1/count_0_BUFG_12 ),
    .D(\U2/kbClk_filter [1]),
    .PRE(clr_IBUF_3),
    .Q(\U2/kbClk_filter [0])
  );
  FDC   \U2/kbData_filter_3  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(kbData_IBUF_1),
    .Q(\U2/kbData_filter [3])
  );
  FDC   \U2/kbData_filter_2  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/kbData_filter [3]),
    .Q(\U2/kbData_filter [2])
  );
  FDC   \U2/kbData_filter_1  (
    .C(\U1/count_0_BUFG_12 ),
    .CLR(clr_IBUF_3),
    .D(\U2/kbData_filter [2]),
    .Q(\U2/kbData_filter [1])
  );
  FDP   \U2/kbData_filter_0  (
    .C(\U1/count_0_BUFG_12 ),
    .D(\U2/kbData_filter [1]),
    .PRE(clr_IBUF_3),
    .Q(\U2/kbData_filter [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U3/Mram__n003212  (
    .I0(\U1/count [17]),
    .I1(\U1/count [16]),
    .O(anode_0_OBUF_22)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U3/Mram__n0032111  (
    .I0(\U1/count [16]),
    .I1(\U1/count [17]),
    .O(anode_1_OBUF_21)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U3/Mram__n003221  (
    .I0(\U1/count [17]),
    .I1(\U1/count [16]),
    .O(anode_2_OBUF_20)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  dec1 (
    .I0(\U1/count [16]),
    .I1(\U1/count [17]),
    .O(dec_OBUF_23)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \key[7]_GND_1_o_equal_37_o<7>11  (
    .I0(\U2/val1 [2]),
    .I1(\U2/val1 [1]),
    .I2(\U2/val1 [0]),
    .O(\key[7]_GND_1_o_equal_37_o<7>1_163 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  Reset_OR_DriverANDClockEnable11 (
    .I0(count0[2]),
    .I1(count0[3]),
    .I2(count0[0]),
    .I3(count0[1]),
    .O(Reset_OR_DriverANDClockEnable1_166)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \current_FSM_FFd2-In1  (
    .I0(current_FSM_FFd2_27),
    .I1(current_FSM_FFd1_26),
    .I2(\key[7]_GND_1_o_equal_37_o ),
    .O(\current_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \key[7]_GND_1_o_equal_37_o<7>1  (
    .I0(\U2/val1 [3]),
    .I1(\U2/val1 [4]),
    .I2(\U2/val1 [5]),
    .I3(\U2/val1 [6]),
    .I4(\U2/val1 [7]),
    .I5(\key[7]_GND_1_o_equal_37_o<7>1_163 ),
    .O(\key[7]_GND_1_o_equal_37_o )
  );
  LUT4 #(
    .INIT ( 16'hFF98 ))
  \current_FSM_FFd1-In1  (
    .I0(\key[7]_GND_1_o_equal_37_o ),
    .I1(current_FSM_FFd2_27),
    .I2(\key[7]_GND_1_o_equal_17_o ),
    .I3(current_FSM_FFd1_26),
    .O(\current_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'h0F0AFFCCFFFF0000 ))
  Mmux_selNext11 (
    .I0(\key[7]_GND_1_o_equal_17_o ),
    .I1(\key[7]_GND_1_o_equal_37_o ),
    .I2(\key[7]_GND_1_o_equal_16_o ),
    .I3(sel[0]),
    .I4(current_FSM_FFd1_26),
    .I5(current_FSM_FFd2_27),
    .O(selNext[0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Mram_startTimer11 (
    .I0(selNext[0]),
    .I1(selNext[1]),
    .O(Mram_startTimer)
  );
  LUT6 #(
    .INIT ( 64'hBBAAFFF000000000 ))
  Mmux_selNext21 (
    .I0(\key[7]_GND_1_o_equal_16_o ),
    .I1(\key[7]_GND_1_o_equal_17_o ),
    .I2(\key[7]_GND_1_o_equal_37_o ),
    .I3(sel[1]),
    .I4(current_FSM_FFd1_26),
    .I5(current_FSM_FFd2_27),
    .O(selNext[1])
  );
  LUT6 #(
    .INIT ( 64'h0002000000000000 ))
  \key[7]_GND_1_o_equal_16_o<7>1  (
    .I0(\key[7]_GND_1_o_equal_37_o<7>1_163 ),
    .I1(\U2/val1 [7]),
    .I2(\U2/val1 [6]),
    .I3(\U2/val1 [5]),
    .I4(\U2/val1 [3]),
    .I5(\U2/val1 [4]),
    .O(\key[7]_GND_1_o_equal_16_o )
  );
  LUT5 #(
    .INIT ( 32'h14444444 ))
  \Mcount_count0_xor<3>11  (
    .I0(Reset_OR_DriverANDClockEnable1_166),
    .I1(count0[3]),
    .I2(count0[0]),
    .I3(count0[1]),
    .I4(count0[2]),
    .O(Mcount_count03)
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT41  (
    .I0(\U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT11_168 ),
    .I1(\U2/bCount [3]),
    .I2(\U2/bCount [0]),
    .I3(\U2/bCount [1]),
    .I4(\U2/bCount [2]),
    .O(\U2/state[3]_bCount[3]_wide_mux_46_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT31  (
    .I0(\U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT11_168 ),
    .I1(\U2/bCount [2]),
    .I2(\U2/bCount [0]),
    .I3(\U2/bCount [1]),
    .O(\U2/state[3]_bCount[3]_wide_mux_46_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \U2/_n0177_inv1  (
    .I0(\U2/kbClkF_218 ),
    .I1(\U2/state_FSM_FFd1_222 ),
    .I2(\U2/state_FSM_FFd3_220 ),
    .I3(\U2/state_FSM_FFd2_221 ),
    .I4(\U2/state_FSM_FFd4_219 ),
    .I5(\U2/bCount[3]_PWR_3_o_LessThan_35_o ),
    .O(\U2/_n0177_inv )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \U2/_n0103<3>1  (
    .I0(\U2/state_FSM_FFd2_221 ),
    .I1(\U2/state_FSM_FFd4_219 ),
    .I2(\U2/state_FSM_FFd3_220 ),
    .I3(\U2/state_FSM_FFd1_222 ),
    .O(\U2/_n0103 )
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \U2/_n0184_inv1  (
    .I0(\U2/state_FSM_FFd3_220 ),
    .I1(\U2/kbClkF_218 ),
    .I2(\U2/state_FSM_FFd2_221 ),
    .I3(\U2/state_FSM_FFd1_222 ),
    .I4(\U2/state_FSM_FFd4_219 ),
    .I5(\U2/bCount[3]_PWR_3_o_LessThan_35_o ),
    .O(\U2/_n0184_inv )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \U2/_n0107<3>1  (
    .I0(\U2/state_FSM_FFd1_222 ),
    .I1(\U2/state_FSM_FFd3_220 ),
    .I2(\U2/state_FSM_FFd2_221 ),
    .I3(\U2/state_FSM_FFd4_219 ),
    .O(\U2/_n0107 )
  );
  LUT6 #(
    .INIT ( 64'h4040404651525156 ))
  \U2/state_FSM_FFd3-In1  (
    .I0(\U2/state_FSM_FFd4_219 ),
    .I1(\U2/state_FSM_FFd3_220 ),
    .I2(\U2/state_FSM_FFd2_221 ),
    .I3(\U2/state_FSM_FFd1_222 ),
    .I4(\U2/kbClkF_218 ),
    .I5(\U2/bCount[3]_PWR_3_o_LessThan_35_o ),
    .O(\U2/state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h16044C48 ))
  \U2/_n0170_inv1  (
    .I0(\U2/state_FSM_FFd2_221 ),
    .I1(\U2/state_FSM_FFd3_220 ),
    .I2(\U2/state_FSM_FFd1_222 ),
    .I3(\U2/kbClkF_218 ),
    .I4(\U2/state_FSM_FFd4_219 ),
    .O(\U2/_n0170_inv )
  );
  LUT4 #(
    .INIT ( 16'h5457 ))
  \U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT111  (
    .I0(\U2/state_FSM_FFd3_220 ),
    .I1(\U2/state_FSM_FFd2_221 ),
    .I2(\U2/state_FSM_FFd1_222 ),
    .I3(\U2/state_FSM_FFd4_219 ),
    .O(\U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT11_168 )
  );
  LUT4 #(
    .INIT ( 16'h5777 ))
  \U2/bCount[3]_PWR_3_o_LessThan_35_o1  (
    .I0(\U2/bCount [3]),
    .I1(\U2/bCount [2]),
    .I2(\U2/bCount [1]),
    .I3(\U2/bCount [0]),
    .O(\U2/bCount[3]_PWR_3_o_LessThan_35_o )
  );
  LUT5 #(
    .INIT ( 32'hCA8A8A8A ))
  \U2/state_FSM_FFd1-In1  (
    .I0(\U2/state_FSM_FFd1_222 ),
    .I1(\U2/state_FSM_FFd4_219 ),
    .I2(\U2/state_FSM_FFd3_220 ),
    .I3(\U2/state_FSM_FFd2_221 ),
    .I4(\U2/val2[7]_PWR_3_o_equal_31_o ),
    .O(\U2/state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h6A6A6AEA ))
  \U2/state_FSM_FFd2-In1  (
    .I0(\U2/state_FSM_FFd2_221 ),
    .I1(\U2/state_FSM_FFd4_219 ),
    .I2(\U2/state_FSM_FFd3_220 ),
    .I3(\U2/val1[7]_PWR_3_o_equal_32_o ),
    .I4(\U2/val2[7]_PWR_3_o_equal_31_o ),
    .O(\U2/state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \click<18>1  (
    .I0(ticker[7]),
    .I1(ticker[5]),
    .I2(ticker[10]),
    .I3(ticker[9]),
    .I4(ticker[16]),
    .I5(ticker[15]),
    .O(click[18])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \click<18>2  (
    .I0(ticker[1]),
    .I1(ticker[0]),
    .I2(ticker[2]),
    .I3(ticker[3]),
    .I4(ticker[4]),
    .I5(ticker[6]),
    .O(\click<18>1_232 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \click<18>3  (
    .I0(ticker[11]),
    .I1(ticker[8]),
    .I2(ticker[12]),
    .I3(ticker[13]),
    .I4(ticker[14]),
    .O(\click<18>2_233 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \key[7]_GND_1_o_equal_2_o<7>_SW0  (
    .I0(\U2/val1 [7]),
    .I1(\U2/val1 [0]),
    .I2(\U2/val1 [1]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h0002000000000000 ))
  \key[7]_GND_1_o_equal_2_o<7>  (
    .I0(\U2/val1 [3]),
    .I1(\U2/val1 [6]),
    .I2(\U2/val1 [5]),
    .I3(N01),
    .I4(\U2/val1 [2]),
    .I5(\U2/val1 [4]),
    .O(\key[7]_GND_1_o_equal_2_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \key[7]_GND_1_o_equal_17_o<7>_SW0  (
    .I0(\U2/val1 [1]),
    .I1(\U2/val1 [7]),
    .I2(\U2/val1 [0]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0002000000000000 ))
  \key[7]_GND_1_o_equal_17_o<7>  (
    .I0(\U2/val1 [3]),
    .I1(\U2/val1 [6]),
    .I2(\U2/val1 [5]),
    .I3(N2),
    .I4(\U2/val1 [2]),
    .I5(\U2/val1 [4]),
    .O(\key[7]_GND_1_o_equal_17_o )
  );
  LUT6 #(
    .INIT ( 64'hFD5DAD0DF858A808 ))
  \U3/Mmux_seg<0>12_SW0  (
    .I0(\U1/count [17]),
    .I1(count2[2]),
    .I2(\U1/count [16]),
    .I3(count3[2]),
    .I4(count1[2]),
    .I5(count0[2]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFD5DAD0DF858A808 ))
  \U3/Mmux_seg<0>11_SW0  (
    .I0(\U1/count [16]),
    .I1(count1[1]),
    .I2(\U1/count [17]),
    .I3(count3[1]),
    .I4(count2[1]),
    .I5(count0[1]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hFD5DAD0DF858A808 ))
  \U3/Mmux_seg<0>1_SW0  (
    .I0(\U1/count [16]),
    .I1(count1[0]),
    .I2(\U1/count [17]),
    .I3(count3[0]),
    .I4(count2[0]),
    .I5(count0[0]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFD5DAD0DF858A808 ))
  \U3/Mmux_seg<0>13_SW0  (
    .I0(\U1/count [16]),
    .I1(count1[3]),
    .I2(\U1/count [17]),
    .I3(count3[3]),
    .I4(count2[3]),
    .I5(count0[3]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  Reset_OR_DriverANDClockEnable1 (
    .I0(count3[3]),
    .I1(count2[3]),
    .I2(count3[0]),
    .I3(count1[3]),
    .I4(count2[0]),
    .I5(count1[0]),
    .O(Reset_OR_DriverANDClockEnable2_240)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  Reset_OR_DriverANDClockEnable2 (
    .I0(count3[1]),
    .I1(count2[1]),
    .I2(count2[2]),
    .I3(count1[1]),
    .I4(count1[2]),
    .O(Reset_OR_DriverANDClockEnable3_241)
  );
  LUT6 #(
    .INIT ( 64'h4040400000000000 ))
  Reset_OR_DriverANDClockEnable3 (
    .I0(count3[2]),
    .I1(Reset_OR_DriverANDClockEnable3_241),
    .I2(Reset_OR_DriverANDClockEnable2_240),
    .I3(selNext[0]),
    .I4(selNext[1]),
    .I5(Reset_OR_DriverANDClockEnable1_166),
    .O(Reset_OR_DriverANDClockEnable4_242)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFBFFFFFFFFF ))
  _n0228_inv_SW0 (
    .I0(count2[1]),
    .I1(count1[3]),
    .I2(count2[0]),
    .I3(count1[2]),
    .I4(count1[1]),
    .I5(count1[0]),
    .O(N12)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U2/val2[7]_PWR_3_o_equal_31_o<7>_SW0  (
    .I0(\U2/val2 [3]),
    .I1(\U2/val2 [2]),
    .I2(\U2/val2 [1]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h0000000000008000 ))
  \U2/val2[7]_PWR_3_o_equal_31_o<7>  (
    .I0(\U2/val2 [7]),
    .I1(\U2/val2 [6]),
    .I2(\U2/val2 [5]),
    .I3(\U2/val2 [4]),
    .I4(\U2/val2 [0]),
    .I5(N14),
    .O(\U2/val2[7]_PWR_3_o_equal_31_o )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \U2/val1[7]_PWR_3_o_equal_32_o<7>_SW0  (
    .I0(\U2/val1 [1]),
    .I1(\U2/val1 [7]),
    .I2(\U2/val1 [0]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  \U2/val1[7]_PWR_3_o_equal_32_o<7>  (
    .I0(\U2/val1 [4]),
    .I1(\U2/val1 [3]),
    .I2(\U2/val1 [6]),
    .I3(\U2/val1 [2]),
    .I4(N16),
    .I5(\U2/val1 [5]),
    .O(\U2/val1[7]_PWR_3_o_equal_32_o )
  );
  IBUF   kbClk_IBUF (
    .I(kbClk),
    .O(kbClk_IBUF_0)
  );
  IBUF   kbData_IBUF (
    .I(kbData),
    .O(kbData_IBUF_1)
  );
  IBUF   clr_IBUF (
    .I(clr),
    .O(clr_IBUF_3)
  );
  OBUF   seg_7_OBUF (
    .I(ticker[17]),
    .O(seg[7])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_13),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_14),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_15),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_16),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_17),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_18),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_19),
    .O(seg[0])
  );
  OBUF   anode_3_OBUF (
    .I(dec_OBUF_23),
    .O(anode[3])
  );
  OBUF   anode_2_OBUF (
    .I(anode_2_OBUF_20),
    .O(anode[2])
  );
  OBUF   anode_1_OBUF (
    .I(anode_1_OBUF_21),
    .O(anode[1])
  );
  OBUF   anode_0_OBUF (
    .I(anode_0_OBUF_22),
    .O(anode[0])
  );
  OBUF   dec_OBUF (
    .I(dec_OBUF_23),
    .O(dec)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<1>_rt  (
    .I0(\U1/count [1]),
    .O(\U1/Mcount_count_cy<1>_rt_265 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<2>_rt  (
    .I0(\U1/count [2]),
    .O(\U1/Mcount_count_cy<2>_rt_266 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<3>_rt  (
    .I0(\U1/count [3]),
    .O(\U1/Mcount_count_cy<3>_rt_267 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<4>_rt  (
    .I0(\U1/count [4]),
    .O(\U1/Mcount_count_cy<4>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<5>_rt  (
    .I0(\U1/count [5]),
    .O(\U1/Mcount_count_cy<5>_rt_269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<6>_rt  (
    .I0(\U1/count [6]),
    .O(\U1/Mcount_count_cy<6>_rt_270 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<7>_rt  (
    .I0(\U1/count [7]),
    .O(\U1/Mcount_count_cy<7>_rt_271 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<8>_rt  (
    .I0(\U1/count [8]),
    .O(\U1/Mcount_count_cy<8>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<9>_rt  (
    .I0(\U1/count [9]),
    .O(\U1/Mcount_count_cy<9>_rt_273 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<10>_rt  (
    .I0(\U1/count [10]),
    .O(\U1/Mcount_count_cy<10>_rt_274 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<11>_rt  (
    .I0(\U1/count [11]),
    .O(\U1/Mcount_count_cy<11>_rt_275 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<12>_rt  (
    .I0(\U1/count [12]),
    .O(\U1/Mcount_count_cy<12>_rt_276 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<13>_rt  (
    .I0(\U1/count [13]),
    .O(\U1/Mcount_count_cy<13>_rt_277 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<14>_rt  (
    .I0(\U1/count [14]),
    .O(\U1/Mcount_count_cy<14>_rt_278 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<15>_rt  (
    .I0(\U1/count [15]),
    .O(\U1/Mcount_count_cy<15>_rt_279 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_cy<16>_rt  (
    .I0(\U1/count [16]),
    .O(\U1/Mcount_count_cy<16>_rt_280 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<1>_rt  (
    .I0(ticker[1]),
    .O(\Mcount_ticker_cy<1>_rt_281 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<2>_rt  (
    .I0(ticker[2]),
    .O(\Mcount_ticker_cy<2>_rt_282 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<3>_rt  (
    .I0(ticker[3]),
    .O(\Mcount_ticker_cy<3>_rt_283 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<4>_rt  (
    .I0(ticker[4]),
    .O(\Mcount_ticker_cy<4>_rt_284 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<5>_rt  (
    .I0(ticker[5]),
    .O(\Mcount_ticker_cy<5>_rt_285 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<6>_rt  (
    .I0(ticker[6]),
    .O(\Mcount_ticker_cy<6>_rt_286 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<7>_rt  (
    .I0(ticker[7]),
    .O(\Mcount_ticker_cy<7>_rt_287 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<8>_rt  (
    .I0(ticker[8]),
    .O(\Mcount_ticker_cy<8>_rt_288 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<9>_rt  (
    .I0(ticker[9]),
    .O(\Mcount_ticker_cy<9>_rt_289 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<10>_rt  (
    .I0(ticker[10]),
    .O(\Mcount_ticker_cy<10>_rt_290 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<11>_rt  (
    .I0(ticker[11]),
    .O(\Mcount_ticker_cy<11>_rt_291 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<12>_rt  (
    .I0(ticker[12]),
    .O(\Mcount_ticker_cy<12>_rt_292 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<13>_rt  (
    .I0(ticker[13]),
    .O(\Mcount_ticker_cy<13>_rt_293 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<14>_rt  (
    .I0(ticker[14]),
    .O(\Mcount_ticker_cy<14>_rt_294 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_cy<15>_rt  (
    .I0(ticker[15]),
    .O(\Mcount_ticker_cy<15>_rt_295 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U1/Mcount_count_xor<17>_rt  (
    .I0(\U1/count [17]),
    .O(\U1/Mcount_count_xor<17>_rt_296 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ticker_xor<16>_rt  (
    .I0(ticker[16]),
    .O(\Mcount_ticker_xor<16>_rt_297 )
  );
  FDP   \U2/kbDataF  (
    .C(\U1/count_0_BUFG_12 ),
    .D(\U2/kbDataF_rstpot_298 ),
    .PRE(clr_IBUF_3),
    .Q(\U2/kbDataF_217 )
  );
  FDP   \U2/kbClkF  (
    .C(\U1/count_0_BUFG_12 ),
    .D(\U2/kbClkF_rstpot_299 ),
    .PRE(clr_IBUF_3),
    .Q(\U2/kbClkF_218 )
  );
  LUT5 #(
    .INIT ( 32'h02000000 ))
  _n0204_inv1_rstpot (
    .I0(count1[3]),
    .I1(count1[1]),
    .I2(count1[2]),
    .I3(count1[0]),
    .I4(Reset_OR_DriverANDClockEnable1_166),
    .O(_n0204_inv1_rstpot_304)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  _n0177_inv1 (
    .I0(\key[7]_GND_1_o_equal_37_o ),
    .I1(\click<18>2_233 ),
    .I2(\click<18>1_232 ),
    .I3(click[18]),
    .O(_n0177_inv)
  );
  LUT5 #(
    .INIT ( 32'hFFFF15FF ))
  \U2/state_FSM_FFd4-In2  (
    .I0(\U2/bCount [2]),
    .I1(\U2/bCount [1]),
    .I2(\U2/bCount [0]),
    .I3(\U2/bCount [3]),
    .I4(\U2/state_FSM_FFd4_219 ),
    .O(\U2/state_FSM_FFd4-In2_244 )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Mcount_ticker_val1 (
    .I0(clr_IBUF_3),
    .I1(\click<18>2_233 ),
    .I2(\click<18>1_232 ),
    .I3(click[18]),
    .O(Mcount_ticker_val)
  );
  LUT5 #(
    .INIT ( 32'hFFFCFFFE ))
  \U2/state_FSM_FFd4-In1_SW0  (
    .I0(\U2/kbDataF_217 ),
    .I1(\U2/state_FSM_FFd3_220 ),
    .I2(\U2/state_FSM_FFd1_222 ),
    .I3(\U2/state_FSM_FFd2_221 ),
    .I4(\U2/state_FSM_FFd4_219 ),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hAFA8AFABAFA8AFA8 ))
  \U2/state_FSM_FFd4-In1_SW1  (
    .I0(\U2/kbClkF_218 ),
    .I1(\U2/state_FSM_FFd2_221 ),
    .I2(\U2/state_FSM_FFd1_222 ),
    .I3(\U2/state_FSM_FFd3_220 ),
    .I4(\U2/state_FSM_FFd4_219 ),
    .I5(\U2/kbDataF_217 ),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF3FFFFFFFA ))
  \U2/state_FSM_FFd4-In1_SW2  (
    .I0(\U2/kbDataF_217 ),
    .I1(\U2/kbClkF_218 ),
    .I2(\U2/state_FSM_FFd3_220 ),
    .I3(\U2/state_FSM_FFd1_222 ),
    .I4(\U2/state_FSM_FFd2_221 ),
    .I5(\U2/state_FSM_FFd4_219 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hCCFCCCF3CCFCCCFA ))
  \U2/state_FSM_FFd4-In1_SW3  (
    .I0(\U2/kbDataF_217 ),
    .I1(\U2/kbClkF_218 ),
    .I2(\U2/state_FSM_FFd3_220 ),
    .I3(\U2/state_FSM_FFd1_222 ),
    .I4(\U2/state_FSM_FFd2_221 ),
    .I5(\U2/state_FSM_FFd4_219 ),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'h028A139B46CE57DF ))
  \U2/state_FSM_FFd4-In3  (
    .I0(\U2/bCount[3]_PWR_3_o_LessThan_35_o ),
    .I1(\U2/state_FSM_FFd4-In2_244 ),
    .I2(N20),
    .I3(N21),
    .I4(N18),
    .I5(N19),
    .O(\U2/state_FSM_FFd4-In3_245 )
  );
  LUT6 #(
    .INIT ( 64'hFEEEEEEEAAAAAAAA ))
  Reset_OR_DriverANDClockEnable4 (
    .I0(clr_IBUF_3),
    .I1(\key[7]_GND_1_o_equal_37_o ),
    .I2(\click<18>2_233 ),
    .I3(\click<18>1_232 ),
    .I4(click[18]),
    .I5(Reset_OR_DriverANDClockEnable4_242),
    .O(Reset_OR_DriverANDClockEnable)
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \U2/state_FSM_FFd4-In4_SW0  (
    .I0(\U2/state_FSM_FFd4_219 ),
    .I1(\U2/state_FSM_FFd2_221 ),
    .I2(\U2/kbClkF_218 ),
    .I3(\U2/state_FSM_FFd1_222 ),
    .O(N23)
  );
  LUT4 #(
    .INIT ( 16'hFFBA ))
  \U2/state_FSM_FFd4-In4_SW1  (
    .I0(\U2/state_FSM_FFd1_222 ),
    .I1(\U2/state_FSM_FFd4_219 ),
    .I2(\U2/kbClkF_218 ),
    .I3(\U2/state_FSM_FFd2_221 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8A888088 ))
  \U2/state_FSM_FFd4-In5  (
    .I0(\U2/state_FSM_FFd3_220 ),
    .I1(N23),
    .I2(\U2/val2[7]_PWR_3_o_equal_31_o ),
    .I3(\U2/val1[7]_PWR_3_o_equal_32_o ),
    .I4(N24),
    .I5(\U2/state_FSM_FFd4-In3_245 ),
    .O(\U2/state_FSM_FFd4-In )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  count3_3_dpot (
    .I0(count3[2]),
    .I1(count3[3]),
    .I2(count3[1]),
    .I3(count3[0]),
    .I4(_n0228_inv_rstpot_315),
    .O(count3_3_dpot_316)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \click<18>4_SW0  (
    .I0(count2[3]),
    .I1(count2[2]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h0000000032222222 ))
  _n0228_inv_rstpot (
    .I0(\key[7]_GND_1_o_equal_37_o ),
    .I1(N26),
    .I2(\click<18>2_233 ),
    .I3(\click<18>1_232 ),
    .I4(click[18]),
    .I5(N12),
    .O(_n0228_inv_rstpot_315)
  );
  LUT6 #(
    .INIT ( 64'hCCC6CCCCCCCCCCCC ))
  count3_0_rstpot (
    .I0(count0[3]),
    .I1(count3[0]),
    .I2(count0[1]),
    .I3(count0[2]),
    .I4(count0[0]),
    .I5(_n0228_inv_rstpot_315),
    .O(count3_0_rstpot_318)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  count3_0_rstpot1 (
    .I0(count3_0_rstpot_318),
    .I1(Reset_OR_DriverANDClockEnable),
    .O(count3_0_rstpot1_319)
  );
  FD   count3_0 (
    .C(clk_BUFGP_2),
    .D(count3_0_rstpot1_319),
    .Q(count3[0])
  );
  FD   count3_1 (
    .C(clk_BUFGP_2),
    .D(count3_1_rstpot1_320),
    .Q(count3[1])
  );
  FD   count3_2 (
    .C(clk_BUFGP_2),
    .D(count3_2_rstpot1_321),
    .Q(count3[2])
  );
  LUT5 #(
    .INIT ( 32'h00006AAA ))
  count3_1_rstpot1 (
    .I0(count3[1]),
    .I1(count3[0]),
    .I2(Reset_OR_DriverANDClockEnable1_166),
    .I3(_n0228_inv_rstpot_315),
    .I4(Reset_OR_DriverANDClockEnable),
    .O(count3_1_rstpot1_320)
  );
  LUT6 #(
    .INIT ( 64'h000000006CCCCCCC ))
  count3_2_rstpot1 (
    .I0(Reset_OR_DriverANDClockEnable1_166),
    .I1(count3[2]),
    .I2(_n0228_inv_rstpot_315),
    .I3(count3[0]),
    .I4(count3[1]),
    .I5(Reset_OR_DriverANDClockEnable),
    .O(count3_2_rstpot1_321)
  );
  LUT5 #(
    .INIT ( 32'hEAAAAAA8 ))
  \U2/kbDataF_rstpot  (
    .I0(\U2/kbDataF_217 ),
    .I1(\U2/kbData_filter [0]),
    .I2(\U2/kbData_filter [1]),
    .I3(\U2/kbData_filter [2]),
    .I4(\U2/kbData_filter [3]),
    .O(\U2/kbDataF_rstpot_298 )
  );
  LUT5 #(
    .INIT ( 32'hEAAAAAA8 ))
  \U2/kbClkF_rstpot  (
    .I0(\U2/kbClkF_218 ),
    .I1(\U2/kbClk_filter [0]),
    .I2(\U2/kbClk_filter [1]),
    .I3(\U2/kbClk_filter [2]),
    .I4(\U2/kbClk_filter [3]),
    .O(\U2/kbClkF_rstpot_299 )
  );
  LUT5 #(
    .INIT ( 32'h0DF0F0F0 ))
  count2_1_dpot (
    .I0(count2[3]),
    .I1(count2[2]),
    .I2(count2[1]),
    .I3(count2[0]),
    .I4(_n0204_inv1_rstpot_304),
    .O(count2_1_dpot_306)
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  count2_2_dpot (
    .I0(count2[1]),
    .I1(count2[2]),
    .I2(count2[0]),
    .I3(_n0204_inv1_rstpot_304),
    .O(count2_2_dpot_307)
  );
  LUT5 #(
    .INIT ( 32'h68AAAAAA ))
  count2_3_dpot (
    .I0(count2[3]),
    .I1(count2[1]),
    .I2(count2[2]),
    .I3(count2[0]),
    .I4(_n0204_inv1_rstpot_304),
    .O(count2_3_dpot_308)
  );
  LUT5 #(
    .INIT ( 32'h6C4C6C6C ))
  count1_1_dpot (
    .I0(Reset_OR_DriverANDClockEnable1_166),
    .I1(count1[1]),
    .I2(count1[0]),
    .I3(count1[2]),
    .I4(count1[3]),
    .O(count1_1_dpot_301)
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  count1_2_dpot (
    .I0(Reset_OR_DriverANDClockEnable1_166),
    .I1(count1[2]),
    .I2(count1[0]),
    .I3(count1[1]),
    .O(count1_2_dpot_302)
  );
  LUT5 #(
    .INIT ( 32'h6AA2AAAA ))
  count1_3_dpot (
    .I0(count1[3]),
    .I1(Reset_OR_DriverANDClockEnable1_166),
    .I2(count1[2]),
    .I3(count1[1]),
    .I4(count1[0]),
    .O(count1_3_dpot_303)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_count0_xor<2>11  (
    .I0(count0[2]),
    .I1(count0[0]),
    .I2(count0[1]),
    .O(Mcount_count02)
  );
  LUT4 #(
    .INIT ( 16'h6466 ))
  \Mcount_count0_xor<1>11  (
    .I0(count0[0]),
    .I1(count0[1]),
    .I2(count0[2]),
    .I3(count0[3]),
    .O(Mcount_count01)
  );
  LUT6 #(
    .INIT ( 64'h0000545754570000 ))
  \U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT21  (
    .I0(\U2/state_FSM_FFd3_220 ),
    .I1(\U2/state_FSM_FFd2_221 ),
    .I2(\U2/state_FSM_FFd1_222 ),
    .I3(\U2/state_FSM_FFd4_219 ),
    .I4(\U2/bCount [0]),
    .I5(\U2/bCount [1]),
    .O(\U2/state[3]_bCount[3]_wide_mux_46_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h11101115 ))
  \U2/Mmux_state[3]_bCount[3]_wide_mux_46_OUT11  (
    .I0(\U2/bCount [0]),
    .I1(\U2/state_FSM_FFd3_220 ),
    .I2(\U2/state_FSM_FFd1_222 ),
    .I3(\U2/state_FSM_FFd2_221 ),
    .I4(\U2/state_FSM_FFd4_219 ),
    .O(\U2/state[3]_bCount[3]_wide_mux_46_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCC6CCCCCCCCC ))
  count2_0_dpot (
    .I0(count1[0]),
    .I1(count2[0]),
    .I2(count1[3]),
    .I3(count1[2]),
    .I4(count1[1]),
    .I5(Reset_OR_DriverANDClockEnable1_166),
    .O(count2_0_dpot_305)
  );
  LUT5 #(
    .INIT ( 32'hAAAA9AAA ))
  count1_0_dpot (
    .I0(count1[0]),
    .I1(count0[2]),
    .I2(count0[3]),
    .I3(count0[0]),
    .I4(count0[1]),
    .O(count1_0_dpot_300)
  );
  LUT6 #(
    .INIT ( 64'hFFAFF00ACC8CC008 ))
  \U3/Mram_temp51  (
    .I0(N8),
    .I1(selNext[1]),
    .I2(N4),
    .I3(N10),
    .I4(N6),
    .I5(selNext[0]),
    .O(seg_5_OBUF_14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFC30AAAAA820 ))
  \U3/Mram_temp41  (
    .I0(selNext[1]),
    .I1(N6),
    .I2(N4),
    .I3(N10),
    .I4(N8),
    .I5(selNext[0]),
    .O(seg_4_OBUF_15)
  );
  LUT6 #(
    .INIT ( 64'h410141014101FFFF ))
  \U3/Mram_temp61  (
    .I0(N10),
    .I1(N4),
    .I2(N6),
    .I3(N8),
    .I4(selNext[0]),
    .I5(selNext[1]),
    .O(seg_6_OBUF_13)
  );
  LUT6 #(
    .INIT ( 64'hFAFA000AC8C80008 ))
  \U3/Mram_temp21  (
    .I0(N6),
    .I1(selNext[1]),
    .I2(N4),
    .I3(N8),
    .I4(N10),
    .I5(selNext[0]),
    .O(seg_2_OBUF_17)
  );
  LUT6 #(
    .INIT ( 64'hFAFA0AA0C8C80880 ))
  \U3/Mram_temp111  (
    .I0(N4),
    .I1(selNext[1]),
    .I2(N6),
    .I3(N8),
    .I4(N10),
    .I5(selNext[0]),
    .O(seg_1_OBUF_18)
  );
  LUT6 #(
    .INIT ( 64'hFFCC003CAA880028 ))
  \U3/Mram_temp12  (
    .I0(selNext[0]),
    .I1(N4),
    .I2(N8),
    .I3(N6),
    .I4(N10),
    .I5(selNext[1]),
    .O(seg_0_OBUF_19)
  );
  LUT6 #(
    .INIT ( 64'hFAFAA50AC8C88408 ))
  \U3/Mram_temp31  (
    .I0(N4),
    .I1(selNext[0]),
    .I2(N6),
    .I3(N8),
    .I4(N10),
    .I5(selNext[1]),
    .O(seg_3_OBUF_16)
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  count3_3_rstpot (
    .I0(count3[3]),
    .I1(Reset_OR_DriverANDClockEnable1_166),
    .I2(count3_3_dpot_316),
    .I3(Reset_OR_DriverANDClockEnable),
    .O(count3_3_rstpot_322)
  );
  FD   count3_3 (
    .C(clk_BUFGP_2),
    .D(count3_3_rstpot_322),
    .Q(count3[3])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_2)
  );
  BUFG   \U1/count_0_BUFG  (
    .O(\U1/count_0_BUFG_12 ),
    .I(\U1/count [0])
  );
  INV   \U1/Mcount_count_lut<0>_INV_0  (
    .I(\U1/count [0]),
    .O(\U1/Mcount_count_lut [0])
  );
  INV   \Mcount_ticker_lut<0>_INV_0  (
    .I(ticker[0]),
    .O(Mcount_ticker_lut[0])
  );
  INV   \Mcount_count0_xor<0>11_INV_0  (
    .I(count0[0]),
    .O(Mcount_count0)
  );
endmodule


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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

