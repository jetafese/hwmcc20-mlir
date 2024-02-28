#!/bin/bash

BRUNCH=$HOME/hwmc20-mlir/runbench/brunch/brunch_par.py
DIR=$HOME/hwmc20-mlir/btor2

OPTS="-b"

function usage () {
    echo "Usage: Give run script, set location, output csv name"
    exit 1
    }

if [ "$#" -ne 2 ]; then
    # if [ "$#" -ne 3 ]; then
    usage
    # fi
fi

SET=$1
Name=$2
extra_opts=$3

# if [ ! -d "$dir" ]; then
#     echo "$dir does not exist"
#     exit 1
# fi

NJOBS=90
MEM=4194304
TIMEOUT=300

FORMAT=base:Cpu:Mem:BMC:seahorn_total:Result

tag=$(date +"%m%d%y%H")
# tag=$(date +"%m%d%y%H%M")
Output=${Name}_${tag}

echo 'Running ' "${dir}" 'with options' "${OPTS}" " " "${extra_opts}" '...'
echo 'Used SVCOMP benchmarks from 20'"${SVCOMP_YEAR}"
echo 'Results stored in '"${Output}"


python3 ${BRUNCH} \
       --outdir ${Output} \
       --outfile ${Output}.csv \
       --format ${FORMAT} \
       --njobs ${NJOBS} \
       $(for i in $(cat $SET) ; do echo $DIR/$i ; done) \
       -- ./b2ir_sim.sh {f} ~/btor2mlir/build

# python3 ${BRUNCH} \
#        --outdir ${Output} \
#        --outfile ${Output}.csv \
#        --format ${FORMAT} \
#        --njobs ${NJOBS} \
#        $(for i in $(cat $SET) ; do echo $DIR/$i ; done) \
#        -- ./get_btor_seahorn.sh {f} ~/btor2mlir/build ~/seahorn/build/run/bin/

# python3 ${BRUNCH} \
#        --outdir ${Output} \
#        --outfile ${Output}.csv \
#        --format ${FORMAT} \
#        --njobs ${NJOBS} \
#        $(for i in $(cat $SET) ; do echo $DIR/$i ; done) \
#        -- ./btorsim_get_btor.sh {f}

# python3 ${BRUNCH} \
#        --outdir ${Output} \
#        --outfile ${Output}.csv \
#        --format ${FORMAT} \
#        --njobs ${NJOBS} \
#        $(for i in $(cat $SET) ; do echo $DIR/$i ; done) \
#        -- ./boolector_get_btor.sh {f}

# python3 ${BRUNCH} \
#        --outdir ${Output} \
#        --outfile ${Output}.csv \
#        --format ${FORMAT} \
#        --njobs ${NJOBS} \
#        $(for i in $(cat $SET) ; do echo $DIR/$i ; done) \
#        -- ./btormc_get_btor.sh {f}

# python3 ${BRUNCH} \
#        --outdir ${Output} \
#        --outfile ${Output}.csv \
#        --format ${FORMAT} \
#        --njobs ${NJOBS} \
#        $(for i in $(cat $SET) ; do echo $DIR/$i ; done) \
#        -- ./btormc-export_get_btor.sh {f}
