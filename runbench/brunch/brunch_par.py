#!/usr/bin/env python

import sys
import os
import os.path
import subprocess as sub
import brunch

#################################################################
# Run brunch.py in parallel via gnu parallel
#################################################################

def get_gnu_parallel():
    cmd_name = brunch.which('parallel')
    if cmd_name is None:
        sys.exit('cannot find GNU/Parallel')
    return cmd_name

def get_pwd ():
    dir_path = os.path.dirname(os.path.realpath(__file__))
    return dir_path

def main (argv):
    ## Assume that brunch_par.py and brunch.py are in the same directory
    opts = brunch.parseArgs (argv[1:])
    prefix = [os.path.join(get_pwd(), 'brunch.py')]
    prefix.extend(['--parallel'])
    prefix.extend(['--cpu={0}'.format(opts.cpu)])
    prefix.extend(['--mem={0}'.format(opts.mem)])
    prefix.extend(['--prefix={0}'.format(opts.prefix)])
    prefix.extend(['--format={0}'.format(opts.format)])
    prefix.extend(['--outdir={0}'.format(opts.outdir)])
    prefix.extend(['--outfile={0}'.format(opts.outfile)])

    fmt = opts.format.split (':')
    if not os.path.isfile(opts.outfile):
        brunch.statsHeader (opts.outfile, fmt)

    args = []
    njobs = 0
    maxjobs= opts.njobs
    ## XXX: In principle, we could pass one single args to Popen first argument.
    ## However, the maximum number of characters in Popen args is 131072.
    ## As a workaround split args into multiple ones.
    nfiles = len(opts.file)
    for f in opts.file:
        njobs = njobs + 1
        cmd = prefix + [f]  + ['--'] + [' '.join(opts.tool_args)]
        args.extend([' '.join(cmd)])
        if njobs == maxjobs:
            p = sub.Popen([get_gnu_parallel(), '--no-notice', '--progress', '--eta', ':::'] + args, shell=False)
            _,_ = p.communicate()
            if p.returncode != 0: sys.exit('gnu parallel failed')
            njobs = 0; args = []
    # run the leftover
    if njobs != 0:
        p = sub.Popen([get_gnu_parallel(), '--no-notice', '--progress', '--eta', ':::'] + args, shell=False)
        _,_ = p.communicate()
        if p.returncode != 0: sys.exit('gnu parallel failed')

if __name__ == '__main__':
    sys.exit (main (sys.argv))

