#!/bin/bash

# btor2mlir-translate --import-btor $1 > $1.mlir ; echo "btor2mlir-translate --import-btor $1 > $1.mlir" ; \
# # btor2mlir-translate --export-btor $1.mlir > $1.export.btor ; \
# # echo "btor2mlir-translate --export-btor $1.mlir > $1.export.btor"
# btor2mlir-opt $1.mlir \
#         --convert-btornd-to-llvm \
#         --convert-btor-to-vector \
#         --convert-arith-to-llvm \
#         --convert-std-to-llvm \
#         --convert-btor-to-llvm \
#         --convert-vector-to-llvm > $1.mlir.opt ; \
# echo "btor2mlir-opt $1.mlir \
#         --convert-btornd-to-llvm \
#         --convert-btor-to-vector \
#         --convert-arith-to-llvm \
#         --convert-std-to-llvm \
#         --convert-btor-to-llvm \
#         --convert-vector-to-llvm > $1.mlir.opt" ; \
# btor2mlir-translate --mlir-to-llvmir $1.mlir.opt > $1.mlir.opt.ll ; \
# echo "btor2mlir-translate --mlir-to-llvmir $1.mlir.opt > $1.mlir.opt.ll" \
# # rm $1.mlir.opt
# # rm $1.mlir

# Seahorn
time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea.yaml bpf $1.mlir.opt.ll --bound=20 --v=1
echo "sea yama -y sea.json bpf $1.mlir.opt.ll --bound=20"

# # VCGen
# time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea.yaml bnd-smt $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20

# # exe-cex
# # --oll=$1.mlir.opt.ll.final.ll
# time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea-cex.yaml bpf  --verbose=2 --cex=/tmp/h2.ll --log=cex -m64 --keep-temps --temp-dir=/tmp/cex $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20
