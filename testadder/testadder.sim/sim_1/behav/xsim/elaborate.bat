@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Nov 09 03:21:19 -0500 2019
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 40c135d1bd114e8c97864063b595b0d3 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot serial_adder_behav xil_defaultlib.serial_adder -log elaborate.log"
call xelab  -wto 40c135d1bd114e8c97864063b595b0d3 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot serial_adder_behav xil_defaultlib.serial_adder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
