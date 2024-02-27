#!/bin/bash

echo "btor2mlir-translate --import-btor $1 > $1.mlir" ; \
btor2mlir-translate --import-btor $1 > $1.mlir
echo "btor2mlir-translate --export-btor $1.mlir > $1.export.btor"
btor2mlir-translate --export-btor $1.mlir > $1.export.btor ; \

time timeout 300 $HOME/boolector/build/bin/btormc $1.export.btor -v
echo "btormc $1.export.btor"

