@echo off
set xv_path=E:\\Vivado\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto e266f0e7f53a41dca62bdf39d38a333f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot SingleCycleCPUTest_behav xil_defaultlib.SingleCycleCPUTest xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
