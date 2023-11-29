#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.2.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Nov 29 20:47:18 CST 2023
# SW Build 3788238 on Tue Feb 21 19:59:23 MST 2023
#
# IP Build 3783773 on Tue Feb 21 23:41:56 MST 2023
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L fifo_generator_v13_2_7 -L blk_mem_gen_v8_4_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot generator_tb_behav xil_defaultlib.generator_tb xil_defaultlib.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L fifo_generator_v13_2_7 -L blk_mem_gen_v8_4_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot generator_tb_behav xil_defaultlib.generator_tb xil_defaultlib.glbl -log elaborate.log
