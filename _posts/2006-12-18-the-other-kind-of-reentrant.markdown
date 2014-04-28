---
layout: post
status: publish
published: true
title: The Other Kind of Reentrant
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Gather around for a tale of adventure in the land of Linux c++ programming.



wordpress_id: 225
wordpress_url: http://girtby.net/2007/01/14/the-other-kind-of-reentrant
date: 2006-12-18 05:28:00.000000000 -06:00
categories:
- Nerd Factor X
tags:
- unix
- c++
- reentrant
- signals
- development
- warstory
comments:
- id: 1514
  author: dbt
  author_email: dbt@meat.net
  author_url: http://meat.net/
  date: '2006-12-18 05:28:17 -0600'
  date_gmt: '2006-12-18 05:28:17 -0600'
  content: |-
    I've always used OpenBSD's man pages as something of a bible for things like this, and  they don't let me down here.

    [OpenBSD's signal man page](http://www.openbsd.org/cgi-bin/man.cgi?signal)

    OpenBSD did a security sweep of all signal handlers in the base OS a couple of years back to prevent signal-based security holes.
- id: 1515
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-18 05:28:00 -0600'
  date_gmt: '2006-12-18 05:28:00 -0600'
  content: Uhm, this article features in <a href="http://del.icio.us/url/0de3b1d8bfb7b05299153757490a41ae">Mark
    Pilgrim’s bookmarks</a> with a nice description…
- id: 4631
  author: Sylvain
  author_email: sylvain.kalache@gmail.com
  author_url: http://china.sylvainkalache.com/
  date: '2009-05-27 16:05:00 -0500'
  date_gmt: '2009-05-27 05:05:00 -0500'
  content: |
    <p>Hi,</p>

    <p>I presently working on a KSH script, first I worked with Telnet. I put it as a coprocess and still communicate with it. Then I wanted to do the same with SSH, but the communication fail!</p>

    <p>I haven't understand all of your article because of my skill in C++ and my english level, but If I have understand, it's not possible to communicate with SSH as a coprocess?</p>

    <p>Here a part of my script:</p>

    <p>ssh -T  logint@192.168.2.80 |&amp;</p>

    <p>sleep 1
    print -p "password"</p>
---
Gather around for a tale of adventure in the land of Linux c++ programming.



<a id="more"></a><a id="more-225"></a>

So there I was. Like a good developer, I was running unit tests on a module that I had been working on. The module was intended to spawn child processes, in order to read and write their stdin and stdout. Such processes are apparently known as co-processes. I had just finished implementing some enhancements to the code which would communicate with the co-processes using a pseudo-terminal instead of pipes, for those applications like `ssh` that read and write directly to the terminal. I was pretty pleased with myself, I could drive ssh as a co-process.

<div class="aside"><p>Yes, I'm well aware that I had just re-invented <code>expect</code>. However I had my reasons, namely the fact that the co-process was made available to the rest of the application as a c++ iostream, meaning that I could read and write it just like any other iostream. Besides, <code>expect</code> also drags in Tcl as a dependency, and I generally try to avoid dependencies where possible.</p></div>

The unit tests were failing. Intermittently. Urgh.

#### The Bug

What was supposed to happen was that I would close the pseudo-terminal master file descriptor. This would cause an EOF in the co-process which would then quit (I was just using `cat` as a co-process for unit testing purposes). My test harness would sleep waiting for a quit flag to be set. The quit flag was supposed to be set from within a handler for the `SIGCHLD` signal, but that wasn't being called for some reason. Instead, my main routine would wake from sleep, see that the flag still wasn't set, timeout, kill the co-process, and fail the unit test.

At least, that's what was happening 50% of the time. The other 50% of the time, I was getting the signal, setting the flag and passing the test. So I'm thinking some sort of race condition. I added more logging, to try and work out why the signal wasn't arriving.

This made it worse. Instead of failing the unit test, it was now hanging, deadlocked.

The stack trace from the deadlocked unit test harness wasn't very insightful. It consisted of `_dl_sysinfo_int80` at the top, followed by `__lll_mutex_lock_wait` and that's about it. Not very enlightening.

#### `strace` Points The Way

So then I tried another tack. Use `strace` to see if the `SIGCHLD` signal was even being delivered to my application. I found it was. I also found that the deadlock was quite reproducible (after a few attempts) and that the deadlock was indeed in a mutex acquisition routine as indicated by the stack trace. In each case, the immediately-preceeding system call was `stat64("/etc/localtime")`. Looking back through the syscall history, there were many similar calls, each time followed by an output log entry.

This tipped me off to looking at the logging library that I was using, [log4cpp](http://log4cpp.sourceforge.net/). As it turned out, it was using `localtime`, a function that was not on my list (well, [W. Richard Stevens' list](http://www.amazon.com/Programming-Environment-Addison-Wesley-Professional-Computing/dp/0201433079/sr=1-1/qid=1166433451/ref=sr_1_1/102-3621023-7572168?ie=UTF8&s=books) anyway) of functions that are safe to call from a signal handler. And logging the incoming signal was the first thing that I was doing in my signal handler.

I verified that, after removing all traces of logging from my signal handlers, the unit tests ran perfectly, to completion. But this was still a mildly unsatisfactory explanation. It didn't explain why the signals weren't being delivered or what mutex was locked that could not be acquired by the signal handler. And maybe I [just hadn't tested enough to reproduce it?](http://www.somethinkodd.com/oddthinking/2005/11/22/hunting-intermittent-bugs/) So I went digging further.

#### `localtime_r` To The Rescue, Or Not

I came across `localtime_r` which was supposed to be a reentrant version of `localtime`. On a whim I re-enabled logging in my signal handlers, and converted log4cpp to use `localtime_r` instead of `localtime`. Result: deadlock.

But this time I was able to get a proper stack trace. Here it is, elided:

    #0  0x004fa7a2 in _dl_sysinfo_int80 () from /lib/ld-linux.so.2
    #1  0x005e7e5e in __lll_mutex_lock_wait () from /lib/tls/libc.so.6
    #2  0x0058ffa9 in _L_mutex_lock_1947 () from /lib/tls/libc.so.6
    ...
    #10 0x0063b840 in __malloc_initialize_hook () from /lib/tls/libc.so.6
    ...
    #15 0x0058dfbd in localtime_r () from /lib/tls/libc.so.6
    #16 0x0058dfbd in localtime_r () from /lib/tls/libc.so.6
    #17 0x00286c48 in log4cpp::TimeStampComponent::append (...) at PatternLayout.cpp:158
    ...
    #26 0x0805c6e9 in main_impl::signal_handler (signal_id=17) at signal_handler.cpp:24
    #27 <signal handler called>
    #28 0x004fa7a2 in _dl_sysinfo_int80 () from /lib/ld-linux.so.2
    #29 0x005cb593 in __xstat64@GLIBC_2.1 () from /lib/tls/libc.so.6
    #30 0x00590118 in __tzfile_read () from /lib/tls/libc.so.6
    ...
    #34 0x0059480f in strftime () from /lib/tls/libc.so.6
    #35 0x00286df9 in log4cpp::TimeStampComponent::append (...) at PatternLayout.cpp:175

Some interesting stuff here.

At the top of the stack, our old friend `__lll_mutex_lock_wait` but it's being called from within `__malloc_initialize_hook`. Ah-ha! It's trying to do a `malloc` from within a signal handler. Naughty Naughty!

A bit further up the stack, there's our call to `localtime_r` from within log4cpp. As if to prove a point about its own reentrancy, `localtime_r` calls itself.

Still further up, we see that the signal handler is indeed being called, but this time within the `stat64` call. It's reading the timezone file or something, from within `strftime`. The call to `strftime` is just after the call to `localtime_r`, but it's pretty easy to see why the deadlock occurs. It's because the signal handler is trying to acquire a low-level lock on the heap that is already acquired by the main application. Result, deadlock.

As for explaining the "missing" signal that I saw previously, I think what happened there was that the malloc actually failed, which caused the signal handler to exit before it could log (or do) anything. I haven't gone back to test this theory though.

#### The Meaning Of Reentrant

So the main lesson to be learned from all this: **reentrant doesn't necessarily mean reentrant with respect to signals**. The [glibc manual](http://www.gnu.org/software/libc/manual/html_node/Nonreentrancy.html#Nonreentrancy) has the complete details and I'm now memorising every last word.

This is not just of interest to those who work in quaint languages like c++. You advanced Python and Ruby guys have access to signal handlers too! Let this be a cautionary tale for you all.
