#!/bin/bash

btor2mlir-translate --import-btor $1 > $1.mlir
echo "btor2mlir-translate --import-btor $1 > $1.mlir" ; \
btor2mlir-translate --export-btor $1.mlir > $1.export.btor ; \
echo "btor2mlir-translate --export-btor $1.mlir > $1.export.btor"
btor2mlir-opt $1.mlir \
        --convert-btornd-to-llvm \
        --convert-btor-to-vector \
        --convert-arith-to-llvm \
        --convert-std-to-llvm \
        --convert-btor-to-llvm \
        --convert-vector-to-llvm > $1.mlir.opt ; \
echo "btor2mlir-opt $1.mlir \
        --convert-btornd-to-llvm \
        --convert-btor-to-vector \
        --convert-arith-to-llvm \
        --convert-std-to-llvm \
        --convert-btor-to-llvm \
        --convert-vector-to-llvm > $1.mlir.opt" ; \
btor2mlir-translate --mlir-to-llvmir $1.mlir.opt > $1.mlir.opt.ll ; \
echo "btor2mlir-translate --mlir-to-llvmir $1.mlir.opt > $1.mlir.opt.ll" \

# exe-cex
# --oll=$1.mlir.opt.ll.final.ll
# echo "time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea-cex.yaml bpf  --verbose=2 --cex=/tmp/h2.ll --log=cex -m64 --keep-temps --temp-dir=/tmp/cex $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20"
# time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea-cex.yaml bpf  --verbose=2 --cex=/tmp/h2.ll --log=cex -m64 --keep-temps --temp-dir=/tmp/cex $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20
echo "time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea-vac.yaml bpf  --vac --verbose=2 --cex=/tmp/h2.ll --log=cex -m64 --keep-temps --temp-dir=/tmp/cex $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20"
time timeout 300 sea yama -y ~/hwmc20-mlir/configs/sea-vac.yaml bpf  --vac --verbose=2 --cex=/tmp/h2.ll --log=cex -m64 --keep-temps --temp-dir=/tmp/cex $1.mlir.opt.ll -o$1.mlir.opt.ll.smt2 --bound=20

clang++-14 $1.mlir.opt.ll /tmp/h2.ll ~/seahorn/build/run/lib/libsea-rt.a -o h2.out 
echo "clang++-14 $1.mlir.opt.ll /tmp/h2.ll ~/seahorn/build/run/lib/libsea-rt.a -o h2.out"

env SEAHORN_RT_VERBOSE=1 ./h2.out > /tmp/h2.txt
echo "SEAHORN_RT_VERBOSE=1 ./h2.out > /tmp/h2.txt"

python3 ~/hwmc20-mlir/runbench/witness_generator.py /tmp/h2.txt
echo "python3 ~/hwmc20-mlir/runbench/witness_generator.py /tmp/h2.txt"

~/btor2tools/build/bin/btorsim -v $1 cex.txt
echo "~/btor2tools/build/bin/btorsim -v $1 cex.txt"
