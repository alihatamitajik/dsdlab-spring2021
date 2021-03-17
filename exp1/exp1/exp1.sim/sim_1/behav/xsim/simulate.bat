@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Mar 10 10:06:30 +0330 2021
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim mod3_tb_behav -key {Behavioral:sim_1:Functional:mod3_tb} -tclbatch mod3_tb.tcl -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/dig_reduce.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/dig_reduce.protoinst" -protoinst "protoinst_files/mod_3.protoinst" -log simulate.log"
call xsim  mod3_tb_behav -key {Behavioral:sim_1:Functional:mod3_tb} -tclbatch mod3_tb.tcl -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/dig_reduce.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/HA.protoinst" -protoinst "protoinst_files/FA.protoinst" -protoinst "protoinst_files/binadd4b.protoinst" -protoinst "protoinst_files/BCDAWOC.protoinst" -protoinst "protoinst_files/dig_reduce.protoinst" -protoinst "protoinst_files/mod_3.protoinst" -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
