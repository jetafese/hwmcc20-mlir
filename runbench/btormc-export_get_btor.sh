#!/bin/bash

time timeout 300 $HOME/boolector/build/bin/btormc $1.export.btor -v
echo "btormc $1.export.btor"

