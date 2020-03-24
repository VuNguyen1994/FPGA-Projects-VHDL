@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Oct 09 10:07:26 -0400 2019
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim test_serial_adder_behav -key {Behavioral:sim_1:Functional:test_serial_adder} -tclbatch test_serial_adder.tcl -view D:/Drexel Study/ECE302/prelab3/serial_adder_behav.wcfg -log simulate.log"
call xsim  test_serial_adder_behav -key {Behavioral:sim_1:Functional:test_serial_adder} -tclbatch test_serial_adder.tcl -view D:/Drexel Study/ECE302/prelab3/serial_adder_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
