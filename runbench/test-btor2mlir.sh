#!/bin/bash

# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19_beem.set btor2mlir_bv_19_beem
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19_goel.set btor2mlir_bv_19_goel
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19_mann.set btor2mlir_bv_19_mann
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_18D_wolf.set btor2mlir_bv_18D_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19A_wolf.set btor2mlir_bv_19A_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19B_wolf.set btor2mlir_bv_19B_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_19C_wolf.set btor2mlir_bv_19C_wolf
# ~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/bv/btor_20.set btor2mlir_bv_20

~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_18A_wolf.set btor2mlir_array_18A_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19A_wolf.set btor2mlir_array_19A_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19B_wolf.set btor2mlir_array_19B_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19C_wolf.set btor2mlir_array_19C_wolf
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_20.set btor2mlir_array_20_mann
~/hwmc20-mlir/runbench/run_btor.sh ~/hwmc20-mlir/runbench/array/btor_19_mann.set btor2mlir_array_19_mann

echo "$(python scrabber.py resolve/btor2mlir_array_18A_wolf_02282401 -o resolve/btor2mlir_array_18A.csv)";\
echo "$(python scrabber.py resolve/btor2mlir_array_19A_wolf_02282401 -o resolve/btor2mlir_array_19A.csv)";\
echo "$(python scrabber.py resolve/btor2mlir_array_19B_wolf_02282401 -o resolve/btor2mlir_array_19B.csv)";\
echo "$(python scrabber.py resolve/btor2mlir_array_19C_wolf_02282401 -o resolve/btor2mlir_array_19C.csv)";\
echo "$(python scrabber.py resolve/btor2mlir_array_20_mann_02282401 -o resolve/btor2mlir_array_20_mann.csv)";\
echo "$(python scrabber.py resolve/btor2mlir_array_19_mann_02282401 -o resolve/btor2mlir_array_19_mann.csv)";\