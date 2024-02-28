#!/bin/bash

echo "timeout 1s $HOME/btor2tools/build/bin/btorsim $1 -r 999999 > $1.sim.txt"
timeout 1s $HOME/btor2tools/build/bin/btorsim $1 -r 999999 > $1.sim.txt

echo "CYCLES: $(grep -o "^@[0-9][0-9]*$" $1.sim.txt | wc -l)"
