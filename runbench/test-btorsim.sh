#!/bin/bash

# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19_beem.set btorsim_bv_19_beem
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19_goel.set btorsim_bv_19_goel
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19_mann.set btorsim_bv_19_mann
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_18D_wolf.set btorsim_bv_18D_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19A_wolf.set btorsim_bv_19A_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19B_wolf.set btorsim_bv_19B_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19C_wolf.set btorsim_bv_19C_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_20.set btorsim_bv_20

~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_18A_wolf.set btorsim_array_18A_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19A_wolf.set btorsim_array_19A_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19B_wolf.set btorsim_array_19B_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19C_wolf.set btorsim_array_19C_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19_mann.set btorsim_array_19_mann
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_20.set btorsim_array_20_mann

# echo "$(python scrabber.py sims/btorsim_array_18A_wolf_02282400 -o sims/btorsim_array_18A.csv)";\
# echo "$(python scrabber.py sims/btorsim_array_19A_wolf_02282400 -o sims/btorsim_array_19A.csv)";\
# echo "$(python scrabber.py sims/btorsim_array_19B_wolf_02282400 -o sims/btorsim_array_19B.csv)";\
# echo "$(python scrabber.py sims/btorsim_array_19C_wolf_02282400 -o sims/btorsim_array_19C.csv)";\
# echo "$(python scrabber.py sims/btorsim_array_19_mann_02282400 -o sims/btorsim_array_19_mann.csv)";\
# echo "$(python scrabber.py sims/btorsim_array_20_mann_02282400 -o sims/btorsim_array_20_mann.csv)";\
