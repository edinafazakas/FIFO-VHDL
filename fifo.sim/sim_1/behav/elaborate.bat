@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto e7813938c25541d38691f065e85285a4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot fifo_behav xil_defaultlib.fifo -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
