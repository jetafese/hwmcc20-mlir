#!/usr/bin/env python

import os
import os.path
import sys
import csv

Verbose = False

def isexec (fpath):
    if fpath == None: return False
    return os.path.isfile(fpath) and os.access(fpath, os.X_OK)

def which(program):
    fpath, fname = os.path.split(program)
    if fpath:
        if isexec (program):
            return program
    else:
        for path in os.environ["PATH"].split(os.pathsep):
            exe_file = os.path.join(path, program)
            if isexec (exe_file):
                return exe_file
    return None

def parseArgs (argv):
    import argparse as a
    p = a.ArgumentParser (description='Benchmark Runner')

    p.add_argument ('--cpu', metavar='CPU',
                    type=int, help='CPU limit', default=60)
    p.add_argument ('--mem', metavar='MEM',
                    type=int, help='Memory limit (MB)', default=4096)
    p.add_argument ('file', nargs='+',
                    help='Benchmark files')
    p.add_argument ('--prefix', default='BRUNCH_STAT',
                    help='Prefix for stats')
    p.add_argument ('--format', required=True, help='Fields')
    # default output directory includes a date
    import datetime as dt
    dt = dt.datetime.now ().strftime ('%d_%m_%Y-t%H-%M-%S')
    def_out = 'out.{dt}'.format (dt=dt)
    p.add_argument ('--outdir', metavar='DIR',
                    default=def_out, help='Output directory')
    p.add_argument ('--outfile', metavar='FILE',
                    default='stats', help='Output filename')
    p.add_argument ('--parallel', dest='parallel',
                     help='Multiple instances of brunch.py are executed',
                     default=False, action='store_true')
    p.add_argument ('--njobs', metavar='UINT', dest='njobs',
                    type=int, help='Maximum number of parallel jobs', default=16)

    if '-h' in argv or '--help' in argv:
        p.print_help ()
        p.exit (0)

    try:
        k = argv.index ('--')
    except ValueError:
        p.error ("No '--' argument")

    args = p.parse_args (argv[:k])
    args.tool_args = argv[k+1:]
    return args

def collectStats (stats, file):
    f = open (file, 'r')
    for line in f:
        if not line.startswith ('BRUNCH_STAT'): continue
        fld = line.split (' ')
        stats [fld[1]] = fld[2].strip ()
    f.close ()
    return stats

def statsHeader (stats_file, flds):
    with open (stats_file, 'a') as sf:
        writer = csv.writer (sf)
        writer.writerow (flds)

# create a lock for csv_writer
import threading
csv_writer_lock = threading.Lock()

def statsLine (stats_file, fmt, stats):
    line = list()
    for fld in fmt:
        if fld in stats: line.append (str (stats [fld]))
        else: line.append (None)
    with csv_writer_lock: # thread-safe using a lock
        with open (stats_file, 'a') as sf:
            writer = csv.writer (sf)
            writer.writerow (line)

cpuTotal = 0.0

def runTool (tool_args, f, outdir, outfile, cpu, mem, fmt, keep_files = True):
    ## Important: cpu and mem are ignored. We assume that the tool has its own
    ## cpu and mem limits as part of tool_args.

    import resource as r
    import subprocess as sub

    # def set_limits ():
    #     if mem > 0:
    #         mem_bytes = mem * 1024 * 1024
    #         r.setrlimit (r.RLIMIT_AS, [mem_bytes, mem_bytes])
    #     if cpu > 0:
    #         r.setrlimit (r.RLIMIT_CPU, [cpu, cpu])

    fmt_tool_args = [v.format(f=f) for v in tool_args]
    fmt_tool_args[0] = which (fmt_tool_args[0])
    if fmt_tool_args[0] is None:
        print("\nError brunch.py: tool command is None!")
        return

    base = os.path.basename (f)
    stdoutfile = os.path.join (outdir, base + '.stdout')
    stderrfile = os.path.join (outdir, base + '.stderr')

    if Verbose: print('\n' + ' '.join(fmt_tool_args))

    with open(stdoutfile, "w") as fd:
        fd.write("{0}\n".format(' '.join(fmt_tool_args)))
    
    p = sub.Popen (fmt_tool_args,
                   stdout=open(stdoutfile, 'a'),
                   stderr=open(stderrfile, 'w'))
    (exit_pid, status, usage) = os.wait4(p.pid, 0)
    signal = status & 0xff   ## signal number that killed the process
    returncode = status >> 8 ## exit status
    
    cpuUsage = r.getrusage (r.RUSAGE_CHILDREN).ru_utime
    # XXX: How to extract memory consumption of the subprocess is not solved
    ## This version uses 3rd parameter returned by os.wait4
    ## XXX: I remember this is what we need since it measures the subprocess
    ##      and not the process who is doing nothing.
    # mem usage in bytes
    memUsage_bytes = usage.ru_maxrss * r.getpagesize()
    # mem usage in megabytes
    memUsage = memUsage_bytes / (1024 * 1024)

    global cpuTotal
    stats = dict()
    stats['File'] = f
    stats['base'] = base
    stats['Status'] = returncode
    stats['Cpu'] = '{0:.2f}'.format (cpuUsage - cpuTotal)
    stats['Mem'] = '{0:.0f}'.format (memUsage)
    stats = collectStats (stats, stdoutfile)
    cpuTotal = cpuUsage
    #statsLine (os.path.join (outdir, outfile), fmt, stats)
    statsLine (outfile, fmt, stats)
    if not keep_files:
        os.remove(stdoutfile)
        os.remove(stderrfile)


def main (argv):
    args = parseArgs (argv[1:])

    ## FIXME: It can happen that between the time we check whether args.outdir exists and
    ## the call to os.mkdir another instance of brunch.py (created by gnu paralell)
    ## creates the directory so the call to mkdir raises an exception.
    ## SOL#1: In python3, we could use os.makedirs(args.outdir, exist_ok = True)
    ## SOL#2: In python2, we catch the exception and ignore it:
    #if not os.path.exists (args.outdir):
    #    os.mkdir (args.outdir)
    if not os.path.exists (args.outdir):
        try:
            os.mkdir (args.outdir)
        except OSError:
            pass

    fmt = args.format.split (':')
    #statsHeader (os.path.join (args.outdir, args.outfile), fmt)
    if not args.parallel:
        if not os.path.isfile(args.outfile):
            statsHeader (args.outfile, fmt)
    global cpuTotal
    import resource as r
    cpuTotal = r.getrusage (r.RUSAGE_CHILDREN).ru_utime

    for f in args.file:
         runTool (args.tool_args, f,
                  args.outdir, args.outfile,
                  cpu=args.cpu,
                  mem=args.mem,
                  fmt=fmt)
    return 0

if __name__ == '__main__':
    sys.exit (main (sys.argv))

