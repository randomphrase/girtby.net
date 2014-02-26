#!/usr/bin/env python

"""ptrace - a tool for parsing ktrace files."""

__author__ = "alastair@girtby.net"
__version__ = 0.1

# TODO:
# - verbose output for process tree (include call list)
# - match process root filter on exe name (eg show output only for gnumake and below)
# - invoke kdump with required options (?)
# - pickle parse tree?

# Python 2.3 or later required.
# Licensed under Creative Commons Attribution-ShareAlike 2.1 Australia
# see http://creativecommons.org/licenses/by-sa/2.1/au/

# This is for pre-2.4 compatibility:
try:
    reversed([])
except NameError:
    def reversed(x):
        i = len(x)
        while i > 0:
            i -= 1
            yield x[i]

import os, sys, popen2, re
from optparse import OptionParser



class process:
    def __init__(self, exe, pid, parent):
        self.exe = exe
        self.pid = pid
        self.parent = parent
        self.children = []
        self.calls = []
        self.notreturned = []
        self.known_multithreaded = False
        if parent:
            parent.children.append(self)
            self.cwd = parent.cwd
        else:
            self.cwd = None

    def called(self, func):
        self.calls.append(func)
        self.notreturned.append(func)

    def returned(self, func):
        self.notreturned.remove(func)
        if func.result >= 0 and func.func == "chdir":
            self._chdir(func)

    def _chdir(self, f):
        assert len(f.namei)
        newdir = f.namei[0]
        assert newdir
        if os.path.isabs(newdir):
            self.cwd = newdir
        elif self.cwd:
            self.cwd = os.path.normpath(os.path.join(self.cwd, newdir))
            
    def __repr__(self):
        return "%s [%d]" % (self.exe, self.pid)


class func_call:
    def __init__(self, proc, func, args):
        assert proc
        assert func
        self.proc = proc
        self.func = func
        self.args = args
        self.namei = []
        self.cwd = None
        self.result = None
        proc.called(self)
    
    def addNamei(self, arg):
        self.namei.append(arg)

    def setResult(self, result):
        # Ensures we don't return twice! (fork and exec are handled separately)
        assert(not self.result)
        self.result = result
        self.proc.returned(self)
        # if we have any namei entries, record the current working directory (if known)
        if self.namei and self.proc.cwd:
            self.cwd = self.proc.cwd

    def __repr__(self):
        return "%s(%s):%d [%s]" % (self.func, ",".join(self.args), self.result, ",".join(self.namei))


class traceparser:

    # regexp matches all kdump lines

    KDUMP_RE = re.compile(r"\s*(?P<pid>\d+)\s+(?P<exe>[\w\.-]+)\s+(?P<op>\w+)\s+(?P<desc>.+)")

    # these regexps match the three major operators that we are interested in

    CALL_RE = re.compile(r"(?P<func>\w+)(\((?P<args>[^,]+(,[^,])*)\))?")
    NAMEI_RE = re.compile(r"\"(?P<namei>.+)\"")
    RET_RE = re.compile(r"(?P<func>\w+)\s+(?P<result>(-?\d+))(\s+(?P<err>.+))?")

    # need to do special handling of some function calls:

    # some function returns with a result token:
    TOKEN_RET_RE = re.compile(r"(?P<func>sigreturn|wait4)\s+(?P<err>.+)")
    # execve failure returns with an error and a description
    EXEC_ERR_RET_RE = re.compile(r"(?P<func>execve)\s+(?P<result>-\d+)\s+(?P<err>.+)")
    # execve success returns with just a result
    EXEC_RET_RE = re.compile(r"(?P<func>execve)\s+(?P<result>\d+)")
    # vfork and fork return with the child process id, which we need to track
    FORK_RET_RE = re.compile(r"(?P<func>v?fork)\s+(?P<pid>\d+)/0x(?P<hexpid>[0-9a-f]+)")


    def __init__(self, tracefile, startcwd):
        if not os.path.isfile(tracefile):
            raise "not a file: " + tracefile
        self.kdump = popen2.popen2("kdump -f " + tracefile)[0]
        self.startcwd = startcwd
        # parser functions for each opcode
        self._parseOp = {
            "CALL": self._parseCall,
            "NAMI": self._parseNamei,
            "RET": self._parseRet
            }
        # search return codes in this order:
        self.allRet_re = ( self.EXEC_RET_RE, self.FORK_RET_RE, self.EXEC_ERR_RET_RE,
                           self.TOKEN_RET_RE, self.RET_RE )

    def _addProcess(self, exe, pid, parent):
        assert exe
        assert pid
        assert isinstance(parent, process)
        p = process(exe, pid, parent)
        self.processes[pid] = p
        return p

    def _parsefirst(self):
        # Read first line
        l = self.kdump.readline()
        m = self.KDUMP_RE.match(l)
        # First line must be a RET from ktrace
        if not m or m.group("op") != "RET" or m.group("exe") != "ktrace":
            raise "First line must be a RET from ktrace, instead found: " + l
        r = self.RET_RE.match(m.group("desc"))
        if not r:
            raise "Can't match RET: " + l

        pid = int(m.group("pid"))
        self.process_root = process("<process_root>", 0, None)
        self.process_root.cwd = self.startcwd
        self._addProcess(m.group("exe"), pid, self.process_root)

    def parse(self):
        self.process_root = None
        self.last_called = None
        self.processes = {}
        self._parsefirst()
        line = 1

        for l in self.kdump.readlines():
            line += 1
            try:
                m = self.KDUMP_RE.match(l)
                pid = int(m.group("pid"))
                p = self.processes.get(pid, None)
                self._parseOp[m.group("op")](p, m)
            except:
                print "Error on line " + str(line) + ": " + l
                raise

        return self.process_root, self.processes

    def _parseCall(self, proc, m):
        c = self.CALL_RE.match(m.group("desc"))
        if not c:
            raise "Can't match CALL: " + m.group("desc")
        name = c.group("func")
        if c.group("args"):
            args = tuple(c.group("args").split(","))
        else:
            args = ()
        self.last_called = func_call(proc, name, args)

    def _parseNamei(self, proc, m):
        n = self.NAMEI_RE.match(m.group("desc"))
        if not n:
            raise "Can't match NAMI: " + m.group("desc")
        proc.calls[-1].addNamei(n.group("namei"))

    def _parseRet(self, proc, m):
        assert m

        # The RET operation needs to be handled specially depending on which function we are
        # returning from. The allRet_re tuple contains the possible regexps that match the relevant
        # functions. The tuple is in search order, generally from specific to generic. We iterate
        # through the tuple looking for a match.
        desc = m.group("desc")
        for re in self.allRet_re:
            r = re.match(desc)
            if r:
                break
        if not r:
            raise "Can't match RET: " + m.string
        
        func = r.group("func")
        result = 0
        caller = None

        if proc:
            # search backwards through calls that haven't returned, looking for a caller to return from
            for c in reversed(proc.notreturned):
                if caller and caller.func == c.func:
                    # this happens when one function is called multiple times concurrently. Issue a
                    # warning and carry on.
                    if not caller.proc.known_multithreaded:
                        print map(lambda x: x.func, caller.proc.notreturned)
                        raise "WARNING: " + caller.func  + " function called concurrently, process may be multithreaded"
                    caller.proc.known_multithreaded = True
                if c.func == func:
                    caller = c
        else:
            # vfork returns in the new process which is not yet in the process table, so proc is
            # None
            assert func == "vfork"

            # bit of a hack, but we assume that the caller was the last function called:
            proc = self.last_called.proc

        # now a funky case statement to act appropriately depending on which regexp we matched

        if r.re is self.EXEC_RET_RE:
            # if we were created as a result of a vfork, then we need to return in both the parent
            # and child process. we should be currently in the parent process, hence the last call
            # will be the vfork. last call in the child process should be execve.
            if proc.notreturned[-1].func == "vfork":
                # child pid is in the result code
                childpid = int(r.group("result"))
                # child process should have been created
                assert self.processes.has_key(childpid)
                # find it in the processes table
                child = self.processes[childpid]
                # last call in the child should be execve
                assert child.notreturned[-1].func == "execve"
                # mark it as returned
                child.notreturned[-1].setResult(0)
                # set this to have the parent process returned below
                caller = proc.notreturned[-1]

            else:
                # for a normal return of an exec, create a sibling process
                self._addProcess(m.group("exe"), proc.pid, proc.parent)

        elif r.re is self.EXEC_ERR_RET_RE:
            # exec failed
            result = int(r.group("result"))
            assert result < 0

        elif r.re is self.FORK_RET_RE:
            # create a child process if we fork. new pid is in the result code
            pid = int(r.group("pid"))
            self._addProcess(proc.exe, pid, proc)

            # special case for vfork - it returns as execve, handled above. Hence clear caller so
            # that we don't mark it as having returned
            if func == "vfork":
                caller = None

        elif r.re is self.TOKEN_RET_RE:
            # sigreturn probably passed
            pass

        elif r.re is self.RET_RE:
            result = int(r.group("result"))

        else:
            # should have already matched one of the above
            assert False

        # mark the caller as having returned. caller is None if we have forked, because the caller
        # in the parent process doesn't return yet (in which case don't mark it as returned)
        if caller:
            caller.setResult(result)
            # also set the error if any
            if r.groupdict().has_key("err"):
                caller.err = r.group("err")


class processTreePrinter:

    def __init__(self, root):
        self.root = root

    def printall(self, verbose):
        self.indent = 0
        self._printprocess(self.root)

    def _printprocess(self, proc):
        print self.indent * "    ", repr(proc)
        self.indent += 1
        for c in proc.children:
            self._printprocess(c)
        self.indent -= 1

class nameiPrinter:

    def __init__(self, root, showfailures = False):
        self.root = root
        self.showfailures = showfailures

    def printall(self, verbose):
        self.namei = {}
        self._addNameiFrom(self.root)
        sorted = self.namei.keys()
        sorted.sort()
        for n in sorted:
            print n
            if not verbose:
                continue
            for func in self.namei[n].keys():
                # I can't believe I just wrote this:
                print "    %s(): %s" % (func, ",".join(map(repr, self.namei[n][func])))

    def _addNameiFrom(self, proc):
        """Populates the namei mapping with a map of:
    namei -> map of:
        function name -> list of procs that call it"""
        for c in proc.calls:
            if c.result >= 0 or self.showfailures:
                for n in c.namei:
                    if not os.path.isabs(n) and c.cwd:
                        path = os.path.normpath(os.path.join(c.cwd, n))
                    else:
                        path = os.path.normpath(n)
                    # See above for explanation of the namei map
                    self.namei.setdefault(path, {}).setdefault(c.func, []).append(proc)
        for c in proc.children:
            self._addNameiFrom(c)

def main():

    parser = OptionParser(version=__version__)
    parser.add_option("-t", "--process-tree", dest="showProcessTree", action="store_true",
                      help="Show process tree")
    parser.add_option("-n", "--namei", dest="showNamei", action="store_true",
                      help="Show namei (file) usage")
    parser.add_option("-p", "--pid", dest="root_pid", type="int",
                      help="Show only results from the specified process and children")
    parser.add_option("-d", "--starting-dir", dest="startcwd",
                      help="Set the working directory for the first process")
    parser.add_option("-f", "--trace-file", dest="tracefile", default="ktrace.out",
                      help="Trace file to read, defaults to %default")
    parser.add_option("-v", "--verbose", dest="verbose", action="store_true",
                      help="Print call info for process tree and vice-versa")
    parser.add_option("-a", "--all-calls", dest="allcalls", action="store_true",
                      help="Include failed system calls in output")
    
    (options, args) = parser.parse_args()

    (proot, processes) = traceparser(options.tracefile, options.startcwd).parse()

    if options.root_pid:
        if not processes.has_key(options.root_pid):
            print >>sys.stderr, "WARNING: could not find process with pid %d, showing all" \
                % (options.root_pid,)
        else:
            proot = processes[options.root_pid]

    if options.showProcessTree:
        print "Process tree:"
        processTreePrinter(proot).printall(options.verbose)

    if options.showNamei:
        print "Namei list:"
        nameiPrinter(proot, options.allcalls).printall(options.verbose)

if __name__ == "__main__":
    main()
