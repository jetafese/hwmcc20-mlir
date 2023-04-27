#!/bin/bash

time timeout 300 $HOME/boolector/build/bin/boolector $1.mlir.opt.ll.smt2
echo "boolector $1 "
