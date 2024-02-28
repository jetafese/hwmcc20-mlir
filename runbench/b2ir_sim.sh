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
    echo "Usage: Give btor file, path to btor2mlir build directory"
    exit 1
}

if [ "$#" -ne 2 ]; then
    usage
fi

echo "$BTOR2MLIR/bin/btor2mlir-translate --import-btor $BTOR > $BTOR.mlir" ; \
$BTOR2MLIR/bin/btor2mlir-translate --import-btor $BTOR > $BTOR.mlir
# echo "$BTOR2MLIR/bin/btor2mlir-translate --export-btor $BTOR.mlir > $BTOR.export.btor"
# $BTOR2MLIR/bin/btor2mlir-translate --export-btor $BTOR.mlir > $BTOR.export.btor ; \
echo "$BTOR2MLIR/bin/btor2mlir-opt $BTOR.mlir \
        --btor-liveness \
        --convert-btornd-to-llvm \
        --convert-btor-to-memref \
        --convert-memref-to-llvm \
        --convert-arith-to-llvm \
        --convert-btor-to-llvm \
        --convert-std-to-llvm \
        --convert-vector-to-llvm \
        --resolve-casts > $BTOR.mlir.opt" ; \
$BTOR2MLIR/bin/btor2mlir-opt $BTOR.mlir \
        --btor-liveness \
        --convert-btornd-to-llvm \
        --convert-btor-to-memref \
        --convert-memref-to-llvm \
        --convert-btor-to-vector \
        --convert-vector-to-llvm \
        --convert-arith-to-llvm \
        --convert-btor-to-llvm \
        --convert-std-to-llvm \
        --convert-vector-to-llvm \
        --resolve-casts > $BTOR.mlir.opt ; \
echo "$BTOR2MLIR/bin/btor2mlir-translate --mlir-to-llvmir $BTOR.mlir.opt > $BTOR.mlir.opt.ll"; \
$BTOR2MLIR/bin/btor2mlir-translate --mlir-to-llvmir $BTOR.mlir.opt > $BTOR.mlir.opt.ll ; \

# Compile simulation binary
echo "clang++ ~/btor2mlir/utils/cex/cex.cpp $BTOR.mlir.opt.ll -o $BTOR.out";\
clang++ ~/btor2mlir/utils/cex/cex.cpp $BTOR.mlir.opt.ll  -o $BTOR.out;\

echo "timeout 1s $BTOR.out > $BTOR.txt";\
timeout 1s $BTOR.out > $BTOR.txt;\

echo "CYCLES: $(grep -o 'another' $BTOR.txt | wc -l)";\

# # Clean
# echo "cleaning up..."
# rm $BTOR.export.btor; \
# rm $BTOR.mlir; \
# rm $BTOR.mlir.opt; \
# rm $BTOR.mlir.opt.ll; \
# rm $BTOR.out; \
# rm $BTOR.txt; \