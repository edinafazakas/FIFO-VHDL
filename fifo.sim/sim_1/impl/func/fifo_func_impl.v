// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sat Nov 12 19:17:52 2022
// Host        : DESKTOP-C4GD19I running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/MATERIALE AN 3 SEM
//               1/SSC/lab5/fifo/fifo.sim/sim_1/impl/func/fifo_func_impl.v}
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "82c890e5" *) 
(* NotValidForBitStream *)
module fifo
   (data_in,
    clk,
    rst,
    wr,
    data_out);
  input [7:0]data_in;
  input clk;
  input rst;
  input wr;
  output [7:0]data_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire [7:0]data_out;
  wire [7:0]data_out_OBUF;
  wire \data_out_OBUF[0]_inst_i_2_n_0 ;
  wire \data_out_OBUF[0]_inst_i_3_n_0 ;
  wire \data_out_OBUF[1]_inst_i_2_n_0 ;
  wire \data_out_OBUF[1]_inst_i_3_n_0 ;
  wire \data_out_OBUF[2]_inst_i_2_n_0 ;
  wire \data_out_OBUF[2]_inst_i_3_n_0 ;
  wire \data_out_OBUF[3]_inst_i_2_n_0 ;
  wire \data_out_OBUF[3]_inst_i_3_n_0 ;
  wire \data_out_OBUF[4]_inst_i_2_n_0 ;
  wire \data_out_OBUF[4]_inst_i_3_n_0 ;
  wire \data_out_OBUF[5]_inst_i_2_n_0 ;
  wire \data_out_OBUF[5]_inst_i_3_n_0 ;
  wire \data_out_OBUF[6]_inst_i_2_n_0 ;
  wire \data_out_OBUF[6]_inst_i_3_n_0 ;
  wire \data_out_OBUF[7]_inst_i_2_n_0 ;
  wire \data_out_OBUF[7]_inst_i_3_n_0 ;
  wire [7:0]en_reg;
  wire [2:0]plusOp;
  wire [7:0]r1;
  wire [7:0]r2;
  wire [7:0]r3;
  wire [7:0]r4;
  wire [7:0]r5;
  wire [7:0]r6;
  wire [7:0]r7;
  wire [7:0]r8;
  wire [2:0]rdinc;
  wire rst;
  wire rst_IBUF;
  wire wr;
  wire wr_IBUF;
  wire [2:0]wrinc;
  wire \wrinc[0]_i_1_n_0 ;
  wire \wrinc[1]_i_1_n_0 ;
  wire \wrinc[2]_i_1_n_0 ;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  MUXF7 \data_out_OBUF[0]_inst_i_1 
       (.I0(\data_out_OBUF[0]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[0]_inst_i_3_n_0 ),
        .O(data_out_OBUF[0]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[0]_inst_i_2 
       (.I0(r4[0]),
        .I1(r3[0]),
        .I2(rdinc[1]),
        .I3(r2[0]),
        .I4(rdinc[0]),
        .I5(r1[0]),
        .O(\data_out_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[0]_inst_i_3 
       (.I0(r8[0]),
        .I1(r7[0]),
        .I2(rdinc[1]),
        .I3(r6[0]),
        .I4(rdinc[0]),
        .I5(r5[0]),
        .O(\data_out_OBUF[0]_inst_i_3_n_0 ));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  MUXF7 \data_out_OBUF[1]_inst_i_1 
       (.I0(\data_out_OBUF[1]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[1]_inst_i_3_n_0 ),
        .O(data_out_OBUF[1]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[1]_inst_i_2 
       (.I0(r4[1]),
        .I1(r3[1]),
        .I2(rdinc[1]),
        .I3(r2[1]),
        .I4(rdinc[0]),
        .I5(r1[1]),
        .O(\data_out_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[1]_inst_i_3 
       (.I0(r8[1]),
        .I1(r7[1]),
        .I2(rdinc[1]),
        .I3(r6[1]),
        .I4(rdinc[0]),
        .I5(r5[1]),
        .O(\data_out_OBUF[1]_inst_i_3_n_0 ));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  MUXF7 \data_out_OBUF[2]_inst_i_1 
       (.I0(\data_out_OBUF[2]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[2]_inst_i_3_n_0 ),
        .O(data_out_OBUF[2]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[2]_inst_i_2 
       (.I0(r4[2]),
        .I1(r3[2]),
        .I2(rdinc[1]),
        .I3(r2[2]),
        .I4(rdinc[0]),
        .I5(r1[2]),
        .O(\data_out_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[2]_inst_i_3 
       (.I0(r8[2]),
        .I1(r7[2]),
        .I2(rdinc[1]),
        .I3(r6[2]),
        .I4(rdinc[0]),
        .I5(r5[2]),
        .O(\data_out_OBUF[2]_inst_i_3_n_0 ));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  MUXF7 \data_out_OBUF[3]_inst_i_1 
       (.I0(\data_out_OBUF[3]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[3]_inst_i_3_n_0 ),
        .O(data_out_OBUF[3]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[3]_inst_i_2 
       (.I0(r4[3]),
        .I1(r3[3]),
        .I2(rdinc[1]),
        .I3(r2[3]),
        .I4(rdinc[0]),
        .I5(r1[3]),
        .O(\data_out_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[3]_inst_i_3 
       (.I0(r8[3]),
        .I1(r7[3]),
        .I2(rdinc[1]),
        .I3(r6[3]),
        .I4(rdinc[0]),
        .I5(r5[3]),
        .O(\data_out_OBUF[3]_inst_i_3_n_0 ));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  MUXF7 \data_out_OBUF[4]_inst_i_1 
       (.I0(\data_out_OBUF[4]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[4]_inst_i_3_n_0 ),
        .O(data_out_OBUF[4]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[4]_inst_i_2 
       (.I0(r4[4]),
        .I1(r3[4]),
        .I2(rdinc[1]),
        .I3(r2[4]),
        .I4(rdinc[0]),
        .I5(r1[4]),
        .O(\data_out_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[4]_inst_i_3 
       (.I0(r8[4]),
        .I1(r7[4]),
        .I2(rdinc[1]),
        .I3(r6[4]),
        .I4(rdinc[0]),
        .I5(r5[4]),
        .O(\data_out_OBUF[4]_inst_i_3_n_0 ));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  MUXF7 \data_out_OBUF[5]_inst_i_1 
       (.I0(\data_out_OBUF[5]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[5]_inst_i_3_n_0 ),
        .O(data_out_OBUF[5]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[5]_inst_i_2 
       (.I0(r4[5]),
        .I1(r3[5]),
        .I2(rdinc[1]),
        .I3(r2[5]),
        .I4(rdinc[0]),
        .I5(r1[5]),
        .O(\data_out_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[5]_inst_i_3 
       (.I0(r8[5]),
        .I1(r7[5]),
        .I2(rdinc[1]),
        .I3(r6[5]),
        .I4(rdinc[0]),
        .I5(r5[5]),
        .O(\data_out_OBUF[5]_inst_i_3_n_0 ));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  MUXF7 \data_out_OBUF[6]_inst_i_1 
       (.I0(\data_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[6]_inst_i_3_n_0 ),
        .O(data_out_OBUF[6]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[6]_inst_i_2 
       (.I0(r4[6]),
        .I1(r3[6]),
        .I2(rdinc[1]),
        .I3(r2[6]),
        .I4(rdinc[0]),
        .I5(r1[6]),
        .O(\data_out_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[6]_inst_i_3 
       (.I0(r8[6]),
        .I1(r7[6]),
        .I2(rdinc[1]),
        .I3(r6[6]),
        .I4(rdinc[0]),
        .I5(r5[6]),
        .O(\data_out_OBUF[6]_inst_i_3_n_0 ));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  MUXF7 \data_out_OBUF[7]_inst_i_1 
       (.I0(\data_out_OBUF[7]_inst_i_2_n_0 ),
        .I1(\data_out_OBUF[7]_inst_i_3_n_0 ),
        .O(data_out_OBUF[7]),
        .S(rdinc[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[7]_inst_i_2 
       (.I0(r4[7]),
        .I1(r3[7]),
        .I2(rdinc[1]),
        .I3(r2[7]),
        .I4(rdinc[0]),
        .I5(r1[7]),
        .O(\data_out_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_OBUF[7]_inst_i_3 
       (.I0(r8[7]),
        .I1(r7[7]),
        .I2(rdinc[1]),
        .I3(r6[7]),
        .I4(rdinc[0]),
        .I5(r5[7]),
        .O(\data_out_OBUF[7]_inst_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[0]),
        .GE(1'b1),
        .Q(r1[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r1_reg[7]_i_1 
       (.I0(wrinc[1]),
        .I1(wrinc[0]),
        .I2(wrinc[2]),
        .I3(wr_IBUF),
        .O(en_reg[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[1]),
        .GE(1'b1),
        .Q(r2[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \r2_reg[7]_i_1 
       (.I0(wrinc[1]),
        .I1(wrinc[0]),
        .I2(wrinc[2]),
        .I3(wr_IBUF),
        .O(en_reg[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[2]),
        .GE(1'b1),
        .Q(r3[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \r3_reg[7]_i_1 
       (.I0(wrinc[2]),
        .I1(wrinc[1]),
        .I2(wrinc[0]),
        .I3(wr_IBUF),
        .O(en_reg[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r4_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[3]),
        .GE(1'b1),
        .Q(r4[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r4_reg[7]_i_1 
       (.I0(wrinc[2]),
        .I1(wrinc[0]),
        .I2(wrinc[1]),
        .I3(wr_IBUF),
        .O(en_reg[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r5_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[4]),
        .GE(1'b1),
        .Q(r5[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \r5_reg[7]_i_1 
       (.I0(wrinc[1]),
        .I1(wrinc[2]),
        .I2(wrinc[0]),
        .I3(wr_IBUF),
        .O(en_reg[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r6_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[5]),
        .GE(1'b1),
        .Q(r6[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r6_reg[7]_i_1 
       (.I0(wrinc[1]),
        .I1(wrinc[0]),
        .I2(wrinc[2]),
        .I3(wr_IBUF),
        .O(en_reg[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r7_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[6]),
        .GE(1'b1),
        .Q(r7[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r7_reg[7]_i_1 
       (.I0(wrinc[0]),
        .I1(wrinc[2]),
        .I2(wrinc[1]),
        .I3(wr_IBUF),
        .O(en_reg[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[0] 
       (.CLR(1'b0),
        .D(data_in_IBUF[0]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[1] 
       (.CLR(1'b0),
        .D(data_in_IBUF[1]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[2] 
       (.CLR(1'b0),
        .D(data_in_IBUF[2]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[3] 
       (.CLR(1'b0),
        .D(data_in_IBUF[3]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[4] 
       (.CLR(1'b0),
        .D(data_in_IBUF[4]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[5] 
       (.CLR(1'b0),
        .D(data_in_IBUF[5]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[6] 
       (.CLR(1'b0),
        .D(data_in_IBUF[6]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r8_reg[7] 
       (.CLR(1'b0),
        .D(data_in_IBUF[7]),
        .G(en_reg[7]),
        .GE(1'b1),
        .Q(r8[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r8_reg[7]_i_1 
       (.I0(wrinc[0]),
        .I1(wrinc[2]),
        .I2(wrinc[1]),
        .I3(wr_IBUF),
        .O(en_reg[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \rdinc[0]_i_1 
       (.I0(rdinc[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rdinc[1]_i_1 
       (.I0(rdinc[0]),
        .I1(rdinc[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rdinc[2]_i_1 
       (.I0(rdinc[0]),
        .I1(rdinc[1]),
        .I2(rdinc[2]),
        .O(plusOp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rdinc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(plusOp[0]),
        .Q(rdinc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rdinc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(plusOp[1]),
        .Q(rdinc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rdinc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(plusOp[2]),
        .Q(rdinc[2]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF wr_IBUF_inst
       (.I(wr),
        .O(wr_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \wrinc[0]_i_1 
       (.I0(wrinc[0]),
        .O(\wrinc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wrinc[1]_i_1 
       (.I0(wrinc[0]),
        .I1(wrinc[1]),
        .O(\wrinc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wrinc[2]_i_1 
       (.I0(wrinc[1]),
        .I1(wrinc[0]),
        .I2(wrinc[2]),
        .O(\wrinc[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wrinc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\wrinc[0]_i_1_n_0 ),
        .Q(wrinc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wrinc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\wrinc[1]_i_1_n_0 ),
        .Q(wrinc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wrinc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\wrinc[2]_i_1_n_0 ),
        .Q(wrinc[2]));
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
