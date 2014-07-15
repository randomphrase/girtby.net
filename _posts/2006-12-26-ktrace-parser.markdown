---
layout: page
status: publish
published: true
title: ktrace parser
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3628
wordpress_url: http://girtby.net/?page_id=3628
date: 2006-12-26 21:07:18.000000000 -06:00
categories:
- Uncategorized
tags: []
comments: []
---
Here is a script to parse, and show hopefully useful output from, the files produced by ktrace. ktrace is a BSD utility for logging each system call made by an application. I have been investigating ktrace as a way of tracking which files are touched during a software build, and this script is the first output of this investigation. The script can also produce a process tree from the ktrace output.

Licensed under [Creative Commons Attribution-ShareAlike 2.1 Australia](http://creativecommons.org/licenses/by-sa/2.1/au/)

#### Features

 * Builds process tree
 * Complete namei (file/directory) listing.
 * Includes only successful system calls by default (can show all)
 * Tracks current working directory of each process, for normalised namei resolution (ie relative to absolute paths)
 * Detects when multithreaded app is encountered (see limitation below)

#### Requirements
 * ktrace/kdump
 * Python 2.3 or later

#### Limitations

* Thread information is not stored in the ktrace file, hence multithreaded apps are not handled. This is OK for software build tools because most of these are singlethreaded, but is a problem in general. The script does look for multiple outstanding system calls, and warns when one app has two or more outstanding calls to the same function. This is bad for the ktrace parser because it cannot determine how to match the returns with the calls.
* Other ktrace options besides "-t cn" (ie system calls, and namei translations) are not parsed currently.

#### Download

* [Version 0.1, 2005-07-17](/extras/ptrace.py)

#### Usage

To use this script you first need to generate a ktrace file of the process you want to investigate. You want to include at least the system calls themselves and the namei translations. Consult the manpage for more details on ktrace options. For example:

    $ ktrace -i -t cn port build anacron

The -i argument ensures that all child processes are included in the trace. Here we are tracing a [darwinports](http://darwinports.opendarwin.org/) build of anacron. You can substitute this for your build command (eg make, ant, xcodebuild, whatever).

The above command produces a ktrace.out file, which you can feed into the ptrace script. Use the -t output option to see a process tree.

    $ ptrace.py -t
    Process tree:
     <process_root> [0]
         ktrace [1371]
         sh [1371]
         tclsh8.4 [1371]
             tclsh8.4 [1372]
             sh [1372]
                 sh [1373]
                 patch [1373]
    [...]

Here each `execve` call generates a sibling, each `fork` a child process.

You can also use the -n option to see a sorted list of files and directories touched by the build:

    $ ptrace.py -n
    Namei list:
    .
    /
    /Library
    /Library/Frameworks
    /Library/Frameworks/StuffIt.framework
    /Library/Frameworks/StuffIt.framework/Resources
    [...]

Note that this list includes only system function calls that actually succeed (ie return a non-negative result). This helps filter *some* of the output of a typical software build, such as when C compilers search through include paths looking for headers.

Another way to filter the output is to zoom in on a specific process. Identify the pid in the process tree output above and you can show only files accessed by that process or it's decendents:

    $ ptrace.py -n -p 1383
    Namei list:
    /
    /Library/Frameworks
    /System/Library/Frameworks
    /dev/urandom
    /opt
    [...]

You can see exactly what processes used each of these files using the -v option:

    $ ptrace.py -n -v -p 1383
    [...]
    /System/Library/Frameworks
        stat(): gnumake [1426],gnumake [1431],gnumake [1436],gnumake [1441],gnumake [1446],gnumake [1451],gnumake [1456],gnumake [1461]
    /dev/urandom
        open(): gnumake [1425],gnumake [1430],gnumake [1435],gnumake [1440],gnumake [1445],gnumake [1450],gnumake [1455],gnumake [1460],gnumake [1466]

Again we're filtering on successful system calls only, but you can include the failed ones using the -a option. For a complete summary of options, use -h:

    $ ptrace.py -h
    usage: ptrace.py [options]

    options:
      --version             show program's version number and exit
      -h, --help            show this help message and exit
      -t, --process-tree    Show process tree
      -n, --namei           Show namei (file) usage
      -p ROOT_PID, --pid=ROOT_PID
                            Show only results from the specified process and
                            children
      -d STARTCWD, --starting-dir=STARTCWD
                            Set the working directory for the first process
      -f TRACEFILE, --trace-file=TRACEFILE
                            Trace file to read, defaults to ktrace.out
      -v, --verbose         Print call info for process tree and vice-versa
      -a, --all-calls       Include failed system calls in output

That's it, share and enjoy!
