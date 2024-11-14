// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Oct 22 19:49:51 2023
// Host        : DESKTOP-P5I79LF running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Cole/Desktop/UCSC/CSE 100/Labs/Lab
//               3/Lab_3/Lab_3.sim/sim_1/synth/func/xsim/testTC_func_synth.v}
// Design      : Top_Level
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CB4CE_MXILINX_clkcntrl4
   (CEO,
    C);
  output CEO;
  input C;

  wire C;
  wire CEO;
  wire I_36_31_n_0;
  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire I_Q3_n_0;
  wire T2;
  wire T3;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    I_36_31
       (.I0(I_Q3_n_0),
        .I1(I_Q2_n_0),
        .I2(I_Q1_n_0),
        .I3(I_Q0_n_0),
        .O(I_36_31_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_67
       (.I0(1'b1),
        .I1(I_36_31_n_0),
        .O(CEO));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4_15 I_Q0
       (.C(C),
        .Q(I_Q0_n_0));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_16 I_Q1
       (.C(C),
        .Q(I_Q1_n_0),
        .Q0(I_Q0_n_0));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_17 I_Q2
       (.C(C),
        .Q(I_Q2_n_0),
        .T(T2));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_18 I_Q3
       (.C(C),
        .Q(I_Q3_n_0),
        .T(T3));
endmodule

(* ORIG_REF_NAME = "CB4CE_MXILINX_clkcntrl4" *) 
module CB4CE_MXILINX_clkcntrl4_1
   (CEO,
    CE,
    C);
  output CEO;
  input CE;
  input C;

  wire C;
  wire CE;
  wire CEO;
  wire I_36_31_n_0;
  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire I_Q3_n_0;
  wire T2;
  wire T3;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    I_36_31
       (.I0(I_Q3_n_0),
        .I1(I_Q2_n_0),
        .I2(I_Q1_n_0),
        .I3(I_Q0_n_0),
        .O(I_36_31_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_67
       (.I0(CE),
        .I1(I_36_31_n_0),
        .O(CEO));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4_11 I_Q0
       (.C(C),
        .CE(CE),
        .Q(I_Q0_n_0));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_12 I_Q1
       (.C(C),
        .CE(CE),
        .Q(I_Q1_n_0),
        .Q0(I_Q0_n_0));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_13 I_Q2
       (.C(C),
        .CE(CE),
        .Q(I_Q2_n_0),
        .T(T2));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_14 I_Q3
       (.C(C),
        .CE(CE),
        .Q(I_Q3_n_0),
        .T(T3));
endmodule

(* ORIG_REF_NAME = "CB4CE_MXILINX_clkcntrl4" *) 
module CB4CE_MXILINX_clkcntrl4_2
   (Q3,
    CE,
    C);
  output Q3;
  input CE;
  input C;

  wire C;
  wire CE;
  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire Q3;
  wire T2;
  wire T3;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4_7 I_Q0
       (.C(C),
        .CE(CE),
        .Q(I_Q0_n_0));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_8 I_Q1
       (.C(C),
        .CE(CE),
        .Q(I_Q1_n_0),
        .Q0(I_Q0_n_0));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_9 I_Q2
       (.C(C),
        .CE(CE),
        .Q(I_Q2_n_0),
        .T(T2));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_10 I_Q3
       (.C(C),
        .CE(CE),
        .Q3(Q3),
        .T(T3));
endmodule

(* ORIG_REF_NAME = "CB4CE_MXILINX_clkcntrl4" *) 
module CB4CE_MXILINX_clkcntrl4_3
   (TC,
    clk_out);
  output TC;
  input clk_out;

  wire I_Q0_n_0;
  wire I_Q1_n_0;
  wire I_Q2_n_0;
  wire I_Q3_n_0;
  wire T2;
  wire T3;
  wire TC;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    I_36_31
       (.I0(I_Q3_n_0),
        .I1(I_Q2_n_0),
        .I2(I_Q1_n_0),
        .I3(I_Q0_n_0),
        .O(TC));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    I_36_32
       (.I0(I_Q2_n_0),
        .I1(I_Q1_n_0),
        .I2(I_Q0_n_0),
        .O(T3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I_36_33
       (.I0(I_Q1_n_0),
        .I1(I_Q0_n_0),
        .O(T2));
  (* HU_SET = "I_Q0_69" *) 
  FTCE_MXILINX_clkcntrl4 I_Q0
       (.Q(I_Q0_n_0),
        .clk_out(clk_out));
  (* HU_SET = "I_Q1_70" *) 
  FTCE_MXILINX_clkcntrl4_4 I_Q1
       (.Q(I_Q1_n_0),
        .Q0(I_Q0_n_0),
        .clk_out(clk_out));
  (* HU_SET = "I_Q2_71" *) 
  FTCE_MXILINX_clkcntrl4_5 I_Q2
       (.Q(I_Q2_n_0),
        .T(T2),
        .clk_out(clk_out));
  (* HU_SET = "I_Q3_72" *) 
  FTCE_MXILINX_clkcntrl4_6 I_Q3
       (.Q(I_Q3_n_0),
        .T(T3),
        .clk_out(clk_out));
endmodule

module Counter_16Bit
   (Q,
    Edge_D1,
    led_OBUF,
    Inc,
    clk_out,
    b3_ff,
    btnL_IBUF,
    sw_IBUF,
    b1_ff,
    x,
    btnD_IBUF,
    b0_ff,
    btnC_IBUF,
    x_0,
    btnU_IBUF);
  output [15:0]Q;
  output Edge_D1;
  output [1:0]led_OBUF;
  input Inc;
  input clk_out;
  input b3_ff;
  input btnL_IBUF;
  input [15:0]sw_IBUF;
  input b1_ff;
  input x;
  input btnD_IBUF;
  input b0_ff;
  input btnC_IBUF;
  input x_0;
  input btnU_IBUF;

  wire \Dwire[0]_3 ;
  wire \Dwire[0]_4 ;
  wire \Dwire[0]_8 ;
  wire \Dwire[1]_5 ;
  wire \Dwire[1]_9 ;
  wire Edge_D1;
  wire Inc;
  wire Inc_0;
  wire Inc_1;
  wire Inc_2;
  wire [15:0]Q;
  wire b0_ff;
  wire b1_ff;
  wire b3_ff;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire btnU_IBUF;
  wire clk_out;
  wire counter4Bit_0_n_10;
  wire counter4Bit_0_n_11;
  wire counter4Bit_0_n_5;
  wire counter4Bit_0_n_6;
  wire counter4Bit_1_n_4;
  wire counter4Bit_1_n_5;
  wire counter4Bit_1_n_6;
  wire counter4Bit_1_n_7;
  wire counter4Bit_1_n_8;
  wire counter4Bit_1_n_9;
  wire counter4Bit_2_n_10;
  wire counter4Bit_2_n_11;
  wire counter4Bit_2_n_12;
  wire counter4Bit_2_n_13;
  wire counter4Bit_2_n_6;
  wire counter4Bit_2_n_8;
  wire counter4Bit_2_n_9;
  wire counter4Bit_3_n_4;
  wire [1:0]led_OBUF;
  wire [15:0]sw_IBUF;
  wire x;
  wire x_0;

  countUD4L counter4Bit_0
       (.\Dwire[0]_3 (\Dwire[0]_3 ),
        .\Dwire[0]_4 (\Dwire[0]_4 ),
        .\Dwire[0]_8 (\Dwire[0]_8 ),
        .\Dwire[1]_5 (\Dwire[1]_5 ),
        .Inc(Inc),
        .Inc_0(Inc_0),
        .b0_ff_0(Q[0]),
        .b0_ff_1(counter4Bit_1_n_6),
        .b0_ff_2(counter4Bit_2_n_13),
        .b0_ff_3(Q[12]),
        .b0_ff_4(counter4Bit_3_n_4),
        .b0_ff_5(counter4Bit_1_n_7),
        .b0_ff_6(counter4Bit_2_n_10),
        .b0_ff_7(b0_ff),
        .b1_ff_0(Q[1]),
        .b1_ff_1(counter4Bit_0_n_11),
        .b1_ff_2(b1_ff),
        .b1_ff_3(Edge_D1),
        .b1_ff_4(Q[4]),
        .b1_ff_5(Q[5]),
        .b2_ff_0(Q[2]),
        .b2_ff_1(counter4Bit_0_n_6),
        .b2_ff_2(counter4Bit_2_n_6),
        .b3_ff_0(Q[3]),
        .b3_ff_1(counter4Bit_0_n_5),
        .b3_ff_2(counter4Bit_0_n_10),
        .b3_ff_3(b3_ff),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .clk_out(clk_out),
        .\led[15] (counter4Bit_1_n_5),
        .led_OBUF(led_OBUF[1]),
        .sw_IBUF({sw_IBUF[12],sw_IBUF[5:1]}),
        .x(x));
  countUD4L_19 counter4Bit_1
       (.\Dwire[0]_4 (\Dwire[0]_4 ),
        .\Dwire[1]_5 (\Dwire[1]_5 ),
        .Inc(Inc_1),
        .Inc_0(Inc_0),
        .b0_ff_0(Q[4]),
        .b0_ff_1(counter4Bit_2_n_10),
        .b0_ff_2(counter4Bit_2_n_9),
        .b1_ff_0(Q[5]),
        .b1_ff_1(counter4Bit_1_n_5),
        .b1_ff_2(counter4Bit_1_n_7),
        .b1_ff_3(counter4Bit_1_n_8),
        .b1_ff_4(counter4Bit_1_n_9),
        .b2_ff_0(Q[6]),
        .b2_ff_1(counter4Bit_1_n_4),
        .b2_ff_2(counter4Bit_1_n_6),
        .b2_ff_3(counter4Bit_0_n_6),
        .b3_ff_0(Q[7]),
        .b3_ff_1(counter4Bit_0_n_5),
        .btnL_IBUF(btnL_IBUF),
        .clk_out(clk_out),
        .\led_OBUF[15]_inst_i_1 (counter4Bit_3_n_4),
        .sw_IBUF(sw_IBUF[7:6]));
  countUD4L_20 counter4Bit_2
       (.\Dwire[0]_3 (\Dwire[0]_3 ),
        .\Dwire[1]_9 (\Dwire[1]_9 ),
        .Edge_D1(Edge_D1),
        .Edge_D1_0(counter4Bit_2_n_6),
        .Edge_D1_1(counter4Bit_2_n_9),
        .Inc(Inc_2),
        .Inc_0(Inc_1),
        .Q({Q[13:12],Q[0]}),
        .b0_ff_0(Q[8]),
        .b0_ff_1(counter4Bit_2_n_11),
        .b0_ff_2(counter4Bit_2_n_12),
        .b0_ff_3(counter4Bit_1_n_9),
        .b0_ff_4(b0_ff),
        .b0_ff_5(counter4Bit_1_n_6),
        .b0_ff_6(counter4Bit_0_n_5),
        .b1_ff_0(Q[9]),
        .b1_ff_1(counter4Bit_0_n_6),
        .b1_ff_2(counter4Bit_1_n_8),
        .b1_ff_3(counter4Bit_1_n_4),
        .b1_ff_4(counter4Bit_1_n_7),
        .b1_ff_5(counter4Bit_3_n_4),
        .b1_ff_6(counter4Bit_0_n_10),
        .b2_ff_0(Q[10]),
        .b2_ff_1(counter4Bit_2_n_8),
        .b2_ff_2(counter4Bit_2_n_10),
        .b3_ff_0(Q[11]),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL(counter4Bit_2_n_13),
        .btnL_IBUF(btnL_IBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk_out(clk_out),
        .sw_IBUF({sw_IBUF[13],sw_IBUF[11:8],sw_IBUF[0]}),
        .x(x),
        .x_0(x_0));
  countUD4L_21 counter4Bit_3
       (.\Dwire[0]_8 (\Dwire[0]_8 ),
        .\Dwire[1]_9 (\Dwire[1]_9 ),
        .Inc(Inc_2),
        .Q(Q[13:12]),
        .b0_ff_i_4__0(Q[3:2]),
        .b2_ff_0(Q[14]),
        .b2_ff_1(counter4Bit_2_n_13),
        .b2_ff_2(counter4Bit_2_n_11),
        .b2_ff_3(counter4Bit_0_n_5),
        .b2_ff_4(counter4Bit_1_n_6),
        .b2_ff_5(counter4Bit_2_n_8),
        .b3_ff_0(Q[15]),
        .b3_ff_1(counter4Bit_3_n_4),
        .btnL_IBUF(btnL_IBUF),
        .clk_out(clk_out),
        .\led[0] (counter4Bit_2_n_12),
        .\led[0]_0 (counter4Bit_0_n_11),
        .led_OBUF(led_OBUF[0]),
        .sw_IBUF(sw_IBUF[15:14]));
endmodule

module Edge_Detector
   (x,
    Edge_D1_0,
    btnU_IBUF,
    clk_out);
  output x;
  output Edge_D1_0;
  input btnU_IBUF;
  input clk_out;

  wire Edge_D1_0;
  wire btnU_IBUF;
  wire clk_out;
  wire x;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    Edge_D1
       (.C(clk_out),
        .CE(1'b1),
        .D(btnU_IBUF),
        .Q(x),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    b0_ff_i_6
       (.I0(btnU_IBUF),
        .I1(x),
        .O(Edge_D1_0));
endmodule

(* ORIG_REF_NAME = "Edge_Detector" *) 
module Edge_Detector_0
   (x,
    Edge_D1_0,
    Edge_D1_1,
    Inc,
    btnD_IBUF,
    clk_out,
    b3_ff,
    btnL_IBUF);
  output x;
  output Edge_D1_0;
  output Edge_D1_1;
  output Inc;
  input btnD_IBUF;
  input clk_out;
  input b3_ff;
  input btnL_IBUF;

  wire Edge_D1_0;
  wire Edge_D1_1;
  wire Inc;
  wire b3_ff;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire clk_out;
  wire x;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    Edge_D1
       (.C(clk_out),
        .CE(1'b1),
        .D(btnD_IBUF),
        .Q(x),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFBAE)) 
    b0_ff_i_1__2
       (.I0(btnL_IBUF),
        .I1(btnD_IBUF),
        .I2(x),
        .I3(b3_ff),
        .O(Inc));
  LUT2 #(
    .INIT(4'h2)) 
    b1_ff_i_2
       (.I0(btnD_IBUF),
        .I1(x),
        .O(Edge_D1_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    b3_ff_i_3
       (.I0(x),
        .I1(btnD_IBUF),
        .I2(b3_ff),
        .O(Edge_D1_0));
endmodule

module FTCE_MXILINX_clkcntrl4
   (Q,
    clk_out);
  output Q;
  input clk_out;

  wire Q;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_10
   (Q3,
    T,
    CE,
    C);
  output Q3;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q3;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q3),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q3));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_11
   (Q,
    CE,
    C);
  output Q;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_12
   (Q,
    Q0,
    CE,
    C);
  output Q;
  input Q0;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire Q0;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_13
   (Q,
    T,
    CE,
    C);
  output Q;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_14
   (Q,
    T,
    CE,
    C);
  output Q;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_15
   (Q,
    C);
  output Q;
  input C;

  wire C;
  wire Q;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_16
   (Q,
    Q0,
    C);
  output Q;
  input Q0;
  input C;

  wire C;
  wire Q;
  wire Q0;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_17
   (Q,
    T,
    C);
  output Q;
  input T;
  input C;

  wire C;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_18
   (Q,
    T,
    C);
  output Q;
  input T;
  input C;

  wire C;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_4
   (Q,
    Q0,
    clk_out);
  output Q;
  input Q0;
  input clk_out;

  wire Q;
  wire Q0;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_5
   (Q,
    T,
    clk_out);
  output Q;
  input T;
  input clk_out;

  wire Q;
  wire T;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_6
   (Q,
    T,
    clk_out);
  output Q;
  input T;
  input clk_out;

  wire Q;
  wire T;
  wire TQ;
  wire clk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(clk_out),
        .CE(1'b1),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_7
   (Q,
    CE,
    C);
  output Q;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(1'b1),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_8
   (Q,
    Q0,
    CE,
    C);
  output Q;
  input Q0;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire Q0;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(Q0),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "FTCE_MXILINX_clkcntrl4" *) 
module FTCE_MXILINX_clkcntrl4_9
   (Q,
    T,
    CE,
    C);
  output Q;
  input T;
  input CE;
  input C;

  wire C;
  wire CE;
  wire Q;
  wire T;
  wire TQ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    I_36_32
       (.I0(T),
        .I1(Q),
        .O(TQ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_36_35
       (.C(C),
        .CE(CE),
        .CLR(1'b0),
        .D(TQ),
        .Q(Q));
endmodule

module Ring_Counter
   (seg_OBUF,
    an_OBUF,
    Q,
    seldig,
    clk_out);
  output [6:0]seg_OBUF;
  output [3:0]an_OBUF;
  input [15:0]Q;
  input seldig;
  input clk_out;

  wire [15:0]Q;
  wire [3:0]an_OBUF;
  wire clk_out;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire seldig;
  wire [3:0]selector;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(selector[0]),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(selector[1]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(selector[2]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(selector[3]),
        .O(an_OBUF[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b0_ff
       (.C(clk_out),
        .CE(seldig),
        .D(selector[3]),
        .Q(selector[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b1_ff
       (.C(clk_out),
        .CE(seldig),
        .D(selector[0]),
        .Q(selector[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b2_ff
       (.C(clk_out),
        .CE(seldig),
        .D(selector[1]),
        .Q(selector[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b3_ff
       (.C(clk_out),
        .CE(seldig),
        .D(selector[2]),
        .Q(selector[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4806)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h016D)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_4_n_0 ),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1091)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1C83)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_4_n_0 ),
        .O(seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h54D0)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_4_n_0 ),
        .O(seg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h098A)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'hA402)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000777)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(Q[15]),
        .I1(selector[3]),
        .I2(Q[3]),
        .I3(selector[0]),
        .I4(\seg_OBUF[6]_inst_i_6_n_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(Q[12]),
        .I1(selector[3]),
        .I2(Q[0]),
        .I3(selector[0]),
        .I4(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000777)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(Q[14]),
        .I1(selector[3]),
        .I2(Q[2]),
        .I3(selector[0]),
        .I4(\seg_OBUF[6]_inst_i_8_n_0 ),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(Q[13]),
        .I1(selector[3]),
        .I2(Q[1]),
        .I3(selector[0]),
        .I4(\seg_OBUF[6]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(selector[2]),
        .I1(Q[11]),
        .I2(selector[1]),
        .I3(Q[7]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(selector[2]),
        .I1(Q[8]),
        .I2(selector[1]),
        .I3(Q[4]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(selector[2]),
        .I1(Q[10]),
        .I2(selector[1]),
        .I3(Q[6]),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(selector[2]),
        .I1(Q[9]),
        .I2(selector[1]),
        .I3(Q[5]),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
endmodule

(* NotValidForBitStream *)
module Top_Level
   (clkin,
    btnR,
    btnU,
    btnD,
    btnC,
    btnL,
    sw,
    seg,
    dp,
    an,
    led);
  input clkin;
  input btnR;
  input btnU;
  input btnD;
  input btnC;
  input btnL;
  input [15:0]sw;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  output [15:0]led;

  wire HIGH_n_1;
  wire LOW_n_1;
  wire LOW_n_2;
  wire [15:0]Q;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire btnD;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire btnU;
  wire btnU_IBUF;
  wire clk;
  (* IBUF_LOW_PWR *) wire clkin;
  wire counter16bit_n_16;
  wire \counter4Bit_0/Inc ;
  wire digsel;
  wire dp;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;
  wire x;
  wire x_0;

  Edge_Detector HIGH
       (.Edge_D1_0(HIGH_n_1),
        .btnU_IBUF(btnU_IBUF),
        .clk_out(clk),
        .x(x));
  Edge_Detector_0 LOW
       (.Edge_D1_0(LOW_n_1),
        .Edge_D1_1(LOW_n_2),
        .Inc(\counter4Bit_0/Inc ),
        .b3_ff(counter16bit_n_16),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .clk_out(clk),
        .x(x_0));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  Counter_16Bit counter16bit
       (.Edge_D1(counter16bit_n_16),
        .Inc(\counter4Bit_0/Inc ),
        .Q(Q),
        .b0_ff(HIGH_n_1),
        .b1_ff(LOW_n_2),
        .b3_ff(LOW_n_1),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk_out(clk),
        .led_OBUF({led_OBUF[15],led_OBUF[0]}),
        .sw_IBUF(sw_IBUF),
        .x(x_0),
        .x_0(x));
  Ring_Counter ding_dong
       (.Q(Q),
        .an_OBUF(an_OBUF),
        .clk_out(clk),
        .seg_OBUF(seg_OBUF),
        .seldig(digsel));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(1'b0),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(1'b0),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(1'b0),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(1'b0),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(1'b0),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(1'b0),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(1'b0),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(1'b0),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(1'b0),
        .O(led[9]));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  labCnt_clks slowit
       (.clk(clk),
        .clkin(clkin),
        .digsel(digsel),
        .greset(btnR_IBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
endmodule

module clk_wiz_0
   (clk_out1,
    clkin,
    greset);
  output clk_out1;
  input clkin;
  input greset;

  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire clkin;
  wire greset;
  wire mmcm_adv_inst_n_16;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clkin),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(36.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_adv_inst_n_16),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(greset));
endmodule

module clkcntrl4
   (clk_out,
    digsel,
    fastclk);
  output clk_out;
  output digsel;
  input fastclk;

  wire XLXN_70;
  wire XLXN_72;
  wire XLXN_75;
  wire XLXN_77;
  wire clk_out;
  wire clkb2_DUMMY;
  wire digsel;
  wire fastclk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    XLXI_328
       (.I0(fastclk),
        .O(clkb2_DUMMY));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUF" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h2)) 
    XLXI_336
       (.I0(XLXN_75),
        .O(digsel));
  (* HU_SET = "XLXI_37_73" *) 
  CB4CE_MXILINX_clkcntrl4 XLXI_37
       (.C(clkb2_DUMMY),
        .CEO(XLXN_72));
  (* HU_SET = "XLXI_38_74" *) 
  CB4CE_MXILINX_clkcntrl4_1 XLXI_38
       (.C(clkb2_DUMMY),
        .CE(XLXN_72),
        .CEO(XLXN_70));
  (* HU_SET = "XLXI_39_75" *) 
  CB4CE_MXILINX_clkcntrl4_2 XLXI_39
       (.C(clkb2_DUMMY),
        .CE(XLXN_70),
        .Q3(XLXN_77));
  CB4CE_MXILINX_clkcntrl4_3 XLXI_40
       (.TC(XLXN_75),
        .clk_out(clk_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG XLXI_401
       (.I(XLXN_77),
        .O(clk_out));
endmodule

module countUD4L
   (b0_ff_0,
    b1_ff_0,
    b2_ff_0,
    b3_ff_0,
    \Dwire[0]_4 ,
    b3_ff_1,
    b2_ff_1,
    \Dwire[1]_5 ,
    \Dwire[0]_8 ,
    led_OBUF,
    b3_ff_2,
    b1_ff_1,
    Inc_0,
    Inc,
    \Dwire[0]_3 ,
    clk_out,
    b3_ff_3,
    btnL_IBUF,
    sw_IBUF,
    b2_ff_2,
    b1_ff_2,
    b1_ff_3,
    b1_ff_4,
    b1_ff_5,
    b0_ff_1,
    b0_ff_2,
    b0_ff_3,
    x,
    btnD_IBUF,
    \led[15] ,
    btnC_IBUF,
    b0_ff_4,
    b0_ff_5,
    b0_ff_6,
    b0_ff_7);
  output b0_ff_0;
  output b1_ff_0;
  output b2_ff_0;
  output b3_ff_0;
  output \Dwire[0]_4 ;
  output b3_ff_1;
  output b2_ff_1;
  output \Dwire[1]_5 ;
  output \Dwire[0]_8 ;
  output [0:0]led_OBUF;
  output b3_ff_2;
  output b1_ff_1;
  output Inc_0;
  input Inc;
  input \Dwire[0]_3 ;
  input clk_out;
  input b3_ff_3;
  input btnL_IBUF;
  input [5:0]sw_IBUF;
  input b2_ff_2;
  input b1_ff_2;
  input b1_ff_3;
  input b1_ff_4;
  input b1_ff_5;
  input b0_ff_1;
  input b0_ff_2;
  input b0_ff_3;
  input x;
  input btnD_IBUF;
  input \led[15] ;
  input btnC_IBUF;
  input b0_ff_4;
  input b0_ff_5;
  input b0_ff_6;
  input b0_ff_7;

  wire \Dwire[0]_3 ;
  wire \Dwire[0]_4 ;
  wire \Dwire[0]_8 ;
  wire \Dwire[1]_2 ;
  wire \Dwire[1]_5 ;
  wire \Dwire[2]_1 ;
  wire \Dwire[3]_0 ;
  wire Inc;
  wire Inc_0;
  wire b0_ff_0;
  wire b0_ff_1;
  wire b0_ff_2;
  wire b0_ff_3;
  wire b0_ff_4;
  wire b0_ff_5;
  wire b0_ff_6;
  wire b0_ff_7;
  wire b1_ff_0;
  wire b1_ff_1;
  wire b1_ff_2;
  wire b1_ff_3;
  wire b1_ff_4;
  wire b1_ff_5;
  wire b2_ff_0;
  wire b2_ff_1;
  wire b2_ff_2;
  wire b2_ff_i_2_n_0;
  wire b2_ff_i_4__0_n_0;
  wire b3_ff_0;
  wire b3_ff_1;
  wire b3_ff_2;
  wire b3_ff_3;
  wire b3_ff_i_2__0_n_0;
  wire b3_ff_i_4__0_n_0;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire clk_out;
  wire \led[15] ;
  wire [0:0]led_OBUF;
  wire [5:0]sw_IBUF;
  wire x;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b0_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[0]_3 ),
        .Q(b0_ff_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    b0_ff_i_1__1
       (.I0(b2_ff_1),
        .I1(b3_ff_1),
        .I2(btnL_IBUF),
        .O(Inc_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAA00BB3F)) 
    b0_ff_i_2__0
       (.I0(sw_IBUF[3]),
        .I1(b3_ff_1),
        .I2(b2_ff_1),
        .I3(btnL_IBUF),
        .I4(b1_ff_4),
        .O(\Dwire[0]_4 ));
  LUT6 #(
    .INIT(64'h88888888FFFF8F88)) 
    b0_ff_i_2__1
       (.I0(sw_IBUF[5]),
        .I1(btnL_IBUF),
        .I2(b3_ff_1),
        .I3(b0_ff_1),
        .I4(b0_ff_2),
        .I5(b0_ff_3),
        .O(\Dwire[0]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    b0_ff_i_3__1
       (.I0(b2_ff_0),
        .I1(b3_ff_0),
        .I2(b0_ff_0),
        .I3(b1_ff_0),
        .I4(x),
        .I5(btnD_IBUF),
        .O(b2_ff_1));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBBBFBB)) 
    b0_ff_i_4__0
       (.I0(b3_ff_2),
        .I1(btnC_IBUF),
        .I2(b0_ff_4),
        .I3(b0_ff_5),
        .I4(b0_ff_6),
        .I5(b0_ff_7),
        .O(b3_ff_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    b0_ff_i_5
       (.I0(b3_ff_0),
        .I1(b2_ff_0),
        .I2(b1_ff_0),
        .I3(b0_ff_0),
        .O(b3_ff_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b1_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[1]_2 ),
        .Q(b1_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88D88F888F8888D8)) 
    b1_ff_i_1
       (.I0(btnL_IBUF),
        .I1(sw_IBUF[0]),
        .I2(b1_ff_2),
        .I3(b1_ff_3),
        .I4(b1_ff_0),
        .I5(b0_ff_0),
        .O(\Dwire[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFF533503305335)) 
    b1_ff_i_1__0
       (.I0(b2_ff_1),
        .I1(b3_ff_1),
        .I2(b1_ff_5),
        .I3(b1_ff_4),
        .I4(btnL_IBUF),
        .I5(sw_IBUF[4]),
        .O(\Dwire[1]_5 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b2_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[2]_1 ),
        .Q(b2_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFAEEAAEEAAEEA)) 
    b2_ff_i_1
       (.I0(b2_ff_i_2_n_0),
        .I1(b2_ff_2),
        .I2(b2_ff_i_4__0_n_0),
        .I3(b2_ff_0),
        .I4(btnL_IBUF),
        .I5(sw_IBUF[1]),
        .O(\Dwire[2]_1 ));
  LUT6 #(
    .INIT(64'h0030002000000010)) 
    b2_ff_i_2
       (.I0(b1_ff_0),
        .I1(btnL_IBUF),
        .I2(b1_ff_2),
        .I3(b1_ff_3),
        .I4(b0_ff_0),
        .I5(b2_ff_0),
        .O(b2_ff_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF9A000000000000)) 
    b2_ff_i_4__0
       (.I0(b1_ff_3),
        .I1(x),
        .I2(btnD_IBUF),
        .I3(btnL_IBUF),
        .I4(b1_ff_0),
        .I5(b0_ff_0),
        .O(b2_ff_i_4__0_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b3_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[3]_0 ),
        .Q(b3_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF600060)) 
    b3_ff_i_1
       (.I0(b3_ff_i_2__0_n_0),
        .I1(b3_ff_0),
        .I2(b3_ff_3),
        .I3(btnL_IBUF),
        .I4(sw_IBUF[2]),
        .I5(b3_ff_i_4__0_n_0),
        .O(\Dwire[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000005514)) 
    b3_ff_i_2__0
       (.I0(b0_ff_0),
        .I1(b1_ff_3),
        .I2(b1_ff_2),
        .I3(btnL_IBUF),
        .I4(b1_ff_0),
        .I5(b2_ff_0),
        .O(b3_ff_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h07000F0008000000)) 
    b3_ff_i_4__0
       (.I0(b0_ff_0),
        .I1(b1_ff_0),
        .I2(b1_ff_2),
        .I3(b1_ff_3),
        .I4(b2_ff_0),
        .I5(b3_ff_0),
        .O(b3_ff_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_OBUF[0]_inst_i_3 
       (.I0(b1_ff_0),
        .I1(b0_ff_0),
        .I2(b3_ff_0),
        .I3(b2_ff_0),
        .O(b1_ff_1));
  LUT3 #(
    .INIT(8'h80)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(\led[15] ),
        .I1(b1_ff_0),
        .I2(b0_ff_0),
        .O(led_OBUF));
endmodule

(* ORIG_REF_NAME = "countUD4L" *) 
module countUD4L_19
   (b0_ff_0,
    b1_ff_0,
    b2_ff_0,
    b3_ff_0,
    b2_ff_1,
    b1_ff_1,
    b2_ff_2,
    b1_ff_2,
    b1_ff_3,
    b1_ff_4,
    Inc,
    Inc_0,
    \Dwire[0]_4 ,
    clk_out,
    \Dwire[1]_5 ,
    b2_ff_3,
    btnL_IBUF,
    sw_IBUF,
    b3_ff_1,
    b0_ff_1,
    \led_OBUF[15]_inst_i_1 ,
    b0_ff_2);
  output b0_ff_0;
  output b1_ff_0;
  output b2_ff_0;
  output b3_ff_0;
  output b2_ff_1;
  output b1_ff_1;
  output b2_ff_2;
  output b1_ff_2;
  output b1_ff_3;
  output b1_ff_4;
  output Inc;
  input Inc_0;
  input \Dwire[0]_4 ;
  input clk_out;
  input \Dwire[1]_5 ;
  input b2_ff_3;
  input btnL_IBUF;
  input [1:0]sw_IBUF;
  input b3_ff_1;
  input b0_ff_1;
  input \led_OBUF[15]_inst_i_1 ;
  input b0_ff_2;

  wire \Dwire[0]_4 ;
  wire \Dwire[1]_5 ;
  wire \Dwire[2]_6 ;
  wire \Dwire[3]_7 ;
  wire Inc;
  wire Inc_0;
  wire b0_ff_0;
  wire b0_ff_1;
  wire b0_ff_2;
  wire b1_ff_0;
  wire b1_ff_1;
  wire b1_ff_2;
  wire b1_ff_3;
  wire b1_ff_4;
  wire b2_ff_0;
  wire b2_ff_1;
  wire b2_ff_2;
  wire b2_ff_3;
  wire b2_ff_i_2__0_n_0;
  wire b2_ff_i_3__2_n_0;
  wire b3_ff_0;
  wire b3_ff_1;
  wire b3_ff_i_2_n_0;
  wire b3_ff_i_3__1_n_0;
  wire btnL_IBUF;
  wire clk_out;
  wire \led_OBUF[15]_inst_i_1 ;
  wire [1:0]sw_IBUF;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b0_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[0]_4 ),
        .Q(b0_ff_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFD)) 
    b0_ff_i_1__0
       (.I0(b2_ff_1),
        .I1(b0_ff_2),
        .I2(btnL_IBUF),
        .O(Inc));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    b0_ff_i_3__0
       (.I0(b2_ff_3),
        .I1(b2_ff_0),
        .I2(b3_ff_0),
        .I3(b0_ff_0),
        .I4(b1_ff_0),
        .O(b2_ff_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    b0_ff_i_4__1
       (.I0(b2_ff_0),
        .I1(b3_ff_0),
        .I2(b0_ff_0),
        .I3(b1_ff_0),
        .I4(b0_ff_1),
        .O(b2_ff_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    b0_ff_i_4__2
       (.I0(b1_ff_0),
        .I1(b0_ff_0),
        .I2(b3_ff_0),
        .I3(b2_ff_0),
        .O(b1_ff_2));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    b0_ff_i_5__1
       (.I0(btnL_IBUF),
        .I1(b1_ff_0),
        .I2(b0_ff_0),
        .I3(b3_ff_0),
        .I4(b2_ff_0),
        .I5(b2_ff_3),
        .O(b1_ff_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b1_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[1]_5 ),
        .Q(b1_ff_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b2_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[2]_6 ),
        .Q(b2_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF06FF00FF06)) 
    b2_ff_i_1__0
       (.I0(b2_ff_0),
        .I1(b2_ff_i_2__0_n_0),
        .I2(b2_ff_3),
        .I3(b2_ff_i_3__2_n_0),
        .I4(btnL_IBUF),
        .I5(sw_IBUF[0]),
        .O(\Dwire[2]_6 ));
  LUT5 #(
    .INIT(32'h00005515)) 
    b2_ff_i_2__0
       (.I0(b1_ff_0),
        .I1(b2_ff_3),
        .I2(b3_ff_1),
        .I3(btnL_IBUF),
        .I4(b0_ff_0),
        .O(b2_ff_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    b2_ff_i_3__2
       (.I0(b1_ff_0),
        .I1(b0_ff_0),
        .I2(b3_ff_1),
        .I3(b2_ff_0),
        .O(b2_ff_i_3__2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b3_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[3]_7 ),
        .Q(b3_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060006)) 
    b3_ff_i_1__0
       (.I0(b3_ff_0),
        .I1(b3_ff_i_2_n_0),
        .I2(b2_ff_3),
        .I3(btnL_IBUF),
        .I4(sw_IBUF[1]),
        .I5(b3_ff_i_3__1_n_0),
        .O(\Dwire[3]_7 ));
  LUT6 #(
    .INIT(64'h0000000000004555)) 
    b3_ff_i_2
       (.I0(b0_ff_0),
        .I1(btnL_IBUF),
        .I2(b3_ff_1),
        .I3(b2_ff_3),
        .I4(b1_ff_0),
        .I5(b2_ff_0),
        .O(b3_ff_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h070F0800)) 
    b3_ff_i_3__1
       (.I0(b0_ff_0),
        .I1(b1_ff_0),
        .I2(b3_ff_1),
        .I3(b2_ff_0),
        .I4(b3_ff_0),
        .O(b3_ff_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \led_OBUF[0]_inst_i_4 
       (.I0(b1_ff_0),
        .I1(b0_ff_0),
        .I2(b3_ff_0),
        .I3(b2_ff_0),
        .O(b1_ff_3));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \led_OBUF[15]_inst_i_2 
       (.I0(b0_ff_1),
        .I1(b1_ff_0),
        .I2(b0_ff_0),
        .I3(b3_ff_0),
        .I4(b2_ff_0),
        .I5(\led_OBUF[15]_inst_i_1 ),
        .O(b1_ff_1));
endmodule

(* ORIG_REF_NAME = "countUD4L" *) 
module countUD4L_20
   (b0_ff_0,
    b1_ff_0,
    b2_ff_0,
    b3_ff_0,
    \Dwire[0]_3 ,
    Edge_D1,
    Edge_D1_0,
    \Dwire[1]_9 ,
    b2_ff_1,
    Edge_D1_1,
    b2_ff_2,
    b0_ff_1,
    b0_ff_2,
    btnL,
    Inc,
    Inc_0,
    clk_out,
    sw_IBUF,
    btnL_IBUF,
    x,
    btnD_IBUF,
    Q,
    b1_ff_1,
    b1_ff_2,
    b0_ff_3,
    b1_ff_3,
    b0_ff_4,
    b1_ff_4,
    b1_ff_5,
    btnC_IBUF,
    b1_ff_6,
    x_0,
    btnU_IBUF,
    b0_ff_5,
    b0_ff_6);
  output b0_ff_0;
  output b1_ff_0;
  output b2_ff_0;
  output b3_ff_0;
  output \Dwire[0]_3 ;
  output Edge_D1;
  output Edge_D1_0;
  output \Dwire[1]_9 ;
  output b2_ff_1;
  output Edge_D1_1;
  output b2_ff_2;
  output b0_ff_1;
  output b0_ff_2;
  output btnL;
  output Inc;
  input Inc_0;
  input clk_out;
  input [5:0]sw_IBUF;
  input btnL_IBUF;
  input x;
  input btnD_IBUF;
  input [2:0]Q;
  input b1_ff_1;
  input b1_ff_2;
  input b0_ff_3;
  input b1_ff_3;
  input b0_ff_4;
  input b1_ff_4;
  input b1_ff_5;
  input btnC_IBUF;
  input b1_ff_6;
  input x_0;
  input btnU_IBUF;
  input b0_ff_5;
  input b0_ff_6;

  wire \Dwire[0]_12 ;
  wire \Dwire[0]_3 ;
  wire \Dwire[1]_13 ;
  wire \Dwire[1]_9 ;
  wire \Dwire[2]_14 ;
  wire \Dwire[3]_15 ;
  wire Edge_D1;
  wire Edge_D1_0;
  wire Edge_D1_1;
  wire Inc;
  wire Inc_0;
  wire [2:0]Q;
  wire b0_ff_0;
  wire b0_ff_1;
  wire b0_ff_2;
  wire b0_ff_3;
  wire b0_ff_4;
  wire b0_ff_5;
  wire b0_ff_6;
  wire b1_ff_0;
  wire b1_ff_1;
  wire b1_ff_2;
  wire b1_ff_3;
  wire b1_ff_4;
  wire b1_ff_5;
  wire b1_ff_6;
  wire b1_ff_i_2__0_n_0;
  wire b2_ff_0;
  wire b2_ff_1;
  wire b2_ff_2;
  wire b2_ff_i_2__1_n_0;
  wire b2_ff_i_3__1_n_0;
  wire b2_ff_i_4__1_n_0;
  wire b3_ff_0;
  wire b3_ff_i_2__2_n_0;
  wire b3_ff_i_3__0_n_0;
  wire b3_ff_i_4_n_0;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnU_IBUF;
  wire clk_out;
  wire [5:0]sw_IBUF;
  wire x;
  wire x_0;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b0_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[0]_12 ),
        .Q(b0_ff_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    b0_ff_i_1
       (.I0(b2_ff_1),
        .I1(b0_ff_5),
        .I2(b0_ff_6),
        .I3(btnL_IBUF),
        .O(Inc));
  LUT6 #(
    .INIT(64'h88888888F8FF8B88)) 
    b0_ff_i_2
       (.I0(sw_IBUF[0]),
        .I1(btnL_IBUF),
        .I2(x),
        .I3(btnD_IBUF),
        .I4(Edge_D1),
        .I5(Q[0]),
        .O(\Dwire[0]_3 ));
  LUT5 #(
    .INIT(32'h8888FFF8)) 
    b0_ff_i_2__2
       (.I0(sw_IBUF[1]),
        .I1(btnL_IBUF),
        .I2(Edge_D1_1),
        .I3(b0_ff_3),
        .I4(b0_ff_0),
        .O(\Dwire[0]_12 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    b0_ff_i_3
       (.I0(b1_ff_1),
        .I1(b2_ff_0),
        .I2(b1_ff_0),
        .I3(b3_ff_0),
        .I4(b0_ff_0),
        .I5(b1_ff_2),
        .O(b2_ff_1));
  LUT6 #(
    .INIT(64'hFFFFF4FF44444444)) 
    b0_ff_i_3__2
       (.I0(x_0),
        .I1(btnU_IBUF),
        .I2(b2_ff_2),
        .I3(b1_ff_4),
        .I4(b1_ff_5),
        .I5(btnC_IBUF),
        .O(Edge_D1));
  LUT6 #(
    .INIT(64'h00000000F0E0A0A0)) 
    b0_ff_i_4
       (.I0(b0_ff_4),
        .I1(b2_ff_2),
        .I2(b1_ff_4),
        .I3(b1_ff_5),
        .I4(btnC_IBUF),
        .I5(b1_ff_6),
        .O(Edge_D1_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    b0_ff_i_5__0
       (.I0(btnL_IBUF),
        .I1(b2_ff_1),
        .O(btnL));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b1_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[1]_13 ),
        .Q(b1_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF5CC50CC05CC5)) 
    b1_ff_i_1__1
       (.I0(b2_ff_1),
        .I1(b1_ff_i_2__0_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(btnL_IBUF),
        .I5(sw_IBUF[5]),
        .O(\Dwire[1]_9 ));
  LUT6 #(
    .INIT(64'hFFFF5CC50CC05CC5)) 
    b1_ff_i_1__2
       (.I0(b1_ff_3),
        .I1(Edge_D1_1),
        .I2(b1_ff_0),
        .I3(b0_ff_0),
        .I4(btnL_IBUF),
        .I5(sw_IBUF[2]),
        .O(\Dwire[1]_13 ));
  LUT6 #(
    .INIT(64'h0000000030202020)) 
    b1_ff_i_2__0
       (.I0(b0_ff_4),
        .I1(b2_ff_2),
        .I2(b1_ff_4),
        .I3(b1_ff_5),
        .I4(btnC_IBUF),
        .I5(b1_ff_6),
        .O(b1_ff_i_2__0_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b2_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[2]_14 ),
        .Q(b2_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAE)) 
    b2_ff_i_1__2
       (.I0(b2_ff_i_2__1_n_0),
        .I1(b0_ff_3),
        .I2(b1_ff_0),
        .I3(b2_ff_i_3__1_n_0),
        .I4(b2_ff_0),
        .I5(b2_ff_i_4__1_n_0),
        .O(\Dwire[2]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    b2_ff_i_2__1
       (.I0(btnL_IBUF),
        .I1(sw_IBUF[3]),
        .O(b2_ff_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    b2_ff_i_3
       (.I0(Edge_D1),
        .I1(x),
        .I2(btnD_IBUF),
        .O(Edge_D1_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    b2_ff_i_3__1
       (.I0(b0_ff_0),
        .I1(btnL_IBUF),
        .I2(Edge_D1_1),
        .I3(b1_ff_3),
        .O(b2_ff_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    b2_ff_i_4__1
       (.I0(b1_ff_0),
        .I1(b0_ff_0),
        .I2(Edge_D1_1),
        .I3(b2_ff_0),
        .O(b2_ff_i_4__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    b2_ff_i_5
       (.I0(Edge_D1_1),
        .I1(b0_ff_0),
        .I2(b3_ff_0),
        .I3(b1_ff_0),
        .I4(b2_ff_0),
        .O(b0_ff_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b3_ff
       (.C(clk_out),
        .CE(Inc_0),
        .D(\Dwire[3]_15 ),
        .Q(b3_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAEAAEA)) 
    b3_ff_i_1__2
       (.I0(b3_ff_i_2__2_n_0),
        .I1(b0_ff_3),
        .I2(b3_ff_i_3__0_n_0),
        .I3(b2_ff_i_3__1_n_0),
        .I4(b3_ff_0),
        .I5(b3_ff_i_4_n_0),
        .O(\Dwire[3]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    b3_ff_i_2__2
       (.I0(b1_ff_0),
        .I1(b2_ff_0),
        .I2(b0_ff_0),
        .I3(Edge_D1_1),
        .I4(b3_ff_0),
        .O(b3_ff_i_2__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    b3_ff_i_3__0
       (.I0(b1_ff_0),
        .I1(b2_ff_0),
        .O(b3_ff_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    b3_ff_i_4
       (.I0(btnL_IBUF),
        .I1(sw_IBUF[4]),
        .O(b3_ff_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \led_OBUF[0]_inst_i_2 
       (.I0(b1_ff_2),
        .I1(b0_ff_0),
        .I2(b3_ff_0),
        .I3(b1_ff_0),
        .I4(b2_ff_0),
        .O(b0_ff_2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \led_OBUF[15]_inst_i_3 
       (.I0(b2_ff_0),
        .I1(b1_ff_0),
        .I2(b3_ff_0),
        .I3(b0_ff_0),
        .O(b2_ff_2));
endmodule

(* ORIG_REF_NAME = "countUD4L" *) 
module countUD4L_21
   (Q,
    b2_ff_0,
    b3_ff_0,
    b3_ff_1,
    led_OBUF,
    Inc,
    \Dwire[0]_8 ,
    clk_out,
    \Dwire[1]_9 ,
    b2_ff_1,
    b2_ff_2,
    btnL_IBUF,
    b2_ff_3,
    b2_ff_4,
    b2_ff_5,
    b0_ff_i_4__0,
    \led[0] ,
    \led[0]_0 ,
    sw_IBUF);
  output [1:0]Q;
  output b2_ff_0;
  output b3_ff_0;
  output b3_ff_1;
  output [0:0]led_OBUF;
  input Inc;
  input \Dwire[0]_8 ;
  input clk_out;
  input \Dwire[1]_9 ;
  input b2_ff_1;
  input b2_ff_2;
  input btnL_IBUF;
  input b2_ff_3;
  input b2_ff_4;
  input b2_ff_5;
  input [1:0]b0_ff_i_4__0;
  input \led[0] ;
  input \led[0]_0 ;
  input [1:0]sw_IBUF;

  wire \Dwire[0]_8 ;
  wire \Dwire[1]_9 ;
  wire \Dwire[2]_10 ;
  wire \Dwire[3]_11 ;
  wire Inc;
  wire [1:0]Q;
  wire [1:0]b0_ff_i_4__0;
  wire b2_ff_0;
  wire b2_ff_1;
  wire b2_ff_2;
  wire b2_ff_3;
  wire b2_ff_4;
  wire b2_ff_5;
  wire b2_ff_i_2__2_n_0;
  wire b2_ff_i_3__0_n_0;
  wire b2_ff_i_4_n_0;
  wire b3_ff_0;
  wire b3_ff_1;
  wire b3_ff_i_2__1_n_0;
  wire b3_ff_i_3__2_n_0;
  wire btnL_IBUF;
  wire clk_out;
  wire \led[0] ;
  wire \led[0]_0 ;
  wire [0:0]led_OBUF;
  wire [1:0]sw_IBUF;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b0_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[0]_8 ),
        .Q(Q[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b1_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[1]_9 ),
        .Q(Q[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b2_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[2]_10 ),
        .Q(b2_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAEFFFFEAAEEAAEEA)) 
    b2_ff_i_1__1
       (.I0(b2_ff_i_2__2_n_0),
        .I1(b2_ff_1),
        .I2(b2_ff_i_3__0_n_0),
        .I3(b2_ff_0),
        .I4(b2_ff_i_4_n_0),
        .I5(b2_ff_2),
        .O(\Dwire[2]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    b2_ff_i_2__2
       (.I0(btnL_IBUF),
        .I1(sw_IBUF[0]),
        .O(b2_ff_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h000000000000BAFF)) 
    b2_ff_i_3__0
       (.I0(btnL_IBUF),
        .I1(b2_ff_3),
        .I2(b2_ff_4),
        .I3(b2_ff_5),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(b2_ff_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8088808088888888)) 
    b2_ff_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(btnL_IBUF),
        .I3(b2_ff_3),
        .I4(b2_ff_4),
        .I5(b2_ff_5),
        .O(b2_ff_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    b3_ff
       (.C(clk_out),
        .CE(Inc),
        .D(\Dwire[3]_11 ),
        .Q(b3_ff_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFEFEFEEEEEEEEE)) 
    b3_ff_i_1__1
       (.I0(b3_ff_i_2__1_n_0),
        .I1(b3_ff_i_3__2_n_0),
        .I2(b3_ff_0),
        .I3(b2_ff_0),
        .I4(b2_ff_i_4_n_0),
        .I5(b2_ff_2),
        .O(\Dwire[3]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    b3_ff_i_2__1
       (.I0(btnL_IBUF),
        .I1(sw_IBUF[1]),
        .O(b3_ff_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h000F000E00000001)) 
    b3_ff_i_3__2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(b2_ff_5),
        .I3(btnL_IBUF),
        .I4(b2_ff_0),
        .I5(b3_ff_0),
        .O(b3_ff_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(\led[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(b3_ff_0),
        .I4(b2_ff_0),
        .I5(\led[0]_0 ),
        .O(led_OBUF));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \led_OBUF[15]_inst_i_4 
       (.I0(b0_ff_i_4__0[1]),
        .I1(b0_ff_i_4__0[0]),
        .I2(b2_ff_0),
        .I3(b3_ff_0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(b3_ff_1));
endmodule

module labCnt_clks
   (clk,
    digsel,
    clkin,
    greset);
  output clk;
  output digsel;
  input clkin;
  input greset;

  wire clk;
  wire clkin;
  wire digsel;
  wire greset;
  wire my_clk_inst_n_0;
  wire NLW_STARTUPE2_inst_CFGCLK_UNCONNECTED;
  wire NLW_STARTUPE2_inst_CFGMCLK_UNCONNECTED;
  wire NLW_STARTUPE2_inst_EOS_UNCONNECTED;
  wire NLW_STARTUPE2_inst_PREQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  STARTUPE2 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    STARTUPE2_inst
       (.CFGCLK(NLW_STARTUPE2_inst_CFGCLK_UNCONNECTED),
        .CFGMCLK(NLW_STARTUPE2_inst_CFGMCLK_UNCONNECTED),
        .CLK(1'b0),
        .EOS(NLW_STARTUPE2_inst_EOS_UNCONNECTED),
        .GSR(greset),
        .GTS(1'b0),
        .KEYCLEARB(1'b1),
        .PACK(1'b0),
        .PREQ(NLW_STARTUPE2_inst_PREQ_UNCONNECTED),
        .USRCCLKO(1'b0),
        .USRCCLKTS(1'b1),
        .USRDONEO(1'b0),
        .USRDONETS(1'b1));
  clk_wiz_0 my_clk_inst
       (.clk_out1(my_clk_inst_n_0),
        .clkin(clkin),
        .greset(greset));
  clkcntrl4 slowclk
       (.clk_out(clk),
        .digsel(digsel),
        .fastclk(my_clk_inst_n_0));
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
