@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Mar 09 04:23:40 +0330 2021
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto da4dce01527a45dba4e977e2c3769579 --incr --debug typical --relax --mt 2 -L xlconstant_v1_1_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot BCD_adder_tb_behav xil_defaultlib.BCD_adder_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto da4dce01527a45dba4e977e2c3769579 --incr --debug typical --relax --mt 2 -L xlconstant_v1_1_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot BCD_adder_tb_behav xil_defaultlib.BCD_adder_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
