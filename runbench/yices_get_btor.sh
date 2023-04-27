#!/bin/bash

time timeout 300 yices --logic=QF_BV $1.mlir.opt.ll.smt2
echo "yices  --logic=QF_BV $1 "
