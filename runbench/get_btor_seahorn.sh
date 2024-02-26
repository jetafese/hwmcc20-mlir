#!/bin/bash

#1 - path to btor file
#2 - path to btor2mlir build directory
#3 - path to SeaHorn executables
BTOR=$1
BTOR2MLIR=$2
SEAHORN=$3
# enable btorsim for validation
BTORTOOLS=$4

function usage () {
    echo "Usage: Give btor file, path to btor2mlir build directory, path to SeaHorn executables"
    exit 1
}

if [ "$#" -ne 3 ]; then
    # if [ "$#" -ne 3 ]; then
    usage
    # fi
fi

echo "$BTOR2MLIR/bin/btor2mlir-translate --import-btor $BTOR > $BTOR.mlir" ; \
$BTOR2MLIR/bin/btor2mlir-translate --import-btor $BTOR > $BTOR.mlir
# echo "$BTOR2MLIR/bin/btor2mlir-translate --export-btor $BTOR.mlir > $BTOR.export.btor"
# $BTOR2MLIR/bin/btor2mlir-translate --export-btor $BTOR.mlir > $BTOR.export.btor ; \
echo "$BTOR2MLIR/bin/btor2mlir-opt $BTOR.mlir \
        --btor-liveness \
        --convert-btornd-to-llvm \
        --convert-btor-to-vector \
        --convert-vector-to-llvm \
        --convert-btor-to-memref \
        --convert-memref-to-llvm \
        --convert-arith-to-llvm \
        --convert-btor-to-llvm \
        --convert-std-to-llvm \
        --convert-vector-to-llvm > $BTOR.mlir.opt" ; \
# $BTOR2MLIR/bin/btor2mlir-opt $BTOR.mlir \
#         --btor-liveness \
#         --convert-btornd-to-llvm \
#         --convert-btor-to-vector \
#         --convert-vector-to-llvm \
#         --convert-btor-to-memref \
#         --convert-memref-to-llvm \
#         --convert-arith-to-llvm \
#         --convert-btor-to-llvm \
#         --convert-std-to-llvm \
#         --convert-vector-to-llvm > $BTOR.mlir.opt ; \
echo "$BTOR2MLIR/bin/btor2mlir-translate --mlir-to-llvmir $BTOR.mlir.opt > $BTOR.mlir.opt.ll"; \
$BTOR2MLIR/bin/btor2mlir-translate --mlir-to-llvmir $BTOR.mlir.opt > $BTOR.mlir.opt.ll ; \

# Compile simulation binary
echo "clang++ ~/btor2mlir/utils/cex/cex.cpp $BTOR.mlir.opt.ll -o $BTOR.out"
clang++ ~/btor2mlir/utils/cex/cex.cpp $BTOR.mlir.opt.ll  -o $BTOR.out

echo "timeout 0.1s $BTOR.out > $BTOR.txt"
timeout 0.1s $BTOR.out > $BTOR.txt

echo "CYCLES: $(grep -o 'another' $BTOR.txt | wc -l)"

# # Seahorn
# time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea.yaml bpf $1.mlir.opt.ll --bound=20 --v=1
# echo "sea yama -y sea.json bpf $1.mlir.opt.ll --bound=20"

# # VCGen
# time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea.yaml bnd-smt $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20

# # exe-cex
# # --oll=$1.mlir.opt.ll.final.ll
# time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea-cex.yaml bpf  --verbose=2 --cex=/tmp/h2.ll --log=cex -m64 --keep-temps --temp-dir=/tmp/cex $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20
