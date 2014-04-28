---
layout: post
status: publish
published: true
title: 'Wide Finder 2: The Widening'
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  `<movie-trailer-guy>` Many months ago he attempted Tim Bray's first [Wide Finder in C++](/archives/2007/10/9/wide-finder-in-c), mainly as a coding exercise. Back then the goal was readability and conciseness. This time ... it's performanceal. `</movie-trailer-guy>`


wordpress_id: 3049
wordpress_url: http://girtby.net/2008/07/08/wide-finder-2-the-widening
date: 2008-07-03 03:27:00.000000000 -05:00
categories:
- Nerd Factor X
tags:
- c++
- wide finder
- performance
comments:
- id: 1801
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2008-07-03 03:27:00 -0500'
  date_gmt: '2008-07-03 03:27:00 -0500'
  content: |-
    Grats.  That's looking pretty good.  Have you looked at something like [Hoard][1] to help with mallocs?  You're in the best position to profile the parts that are easiest to improve, but Hoard might be a pretty easy drop-in if memory allocation is still hurting.


      [1]: http://prisms.cs.umass.edu/emery/index.php?page=download-hoard
- id: 1802
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-07-03 03:27:00 -0500'
  date_gmt: '2008-07-03 03:27:00 -0500'
  content: |-
    Thanks Chris. Yes I have looked at hoard, and in fact we use it at $WORK. However I'm finding I get much better performance improvement by switching to a Boost.Pool accessed through a thread-specific pointer. This drastically reduces the need to do malloc in the first place.

    On the flip side, I can reduce the need to deallocate memory simply by introducing memory leaks ... yes, you read that right! Basically when you have many millions of objects allocated it can take quite a while to deallocate them all. There's something like a 10-second pause after processing the 42G data file while my application de-allocates all of the objects, so an easy performance win is simply Not Do That. Every second counts, particularly when you have Java implementations to beat ...
- id: 1803
  author: Thatcher
  author_email: tu@tulrich.com
  author_url: ''
  date: '2008-07-03 03:27:00 -0500'
  date_gmt: '2008-07-03 03:27:00 -0500'
  content: |-
    Re: thread contention in malloc, are you aware of tcmalloc?  [http://goog-perftools.sourceforge.net/doc/tcmalloc.html][1]

    -T


      [1]: http://goog-perftools.sourceforge.net/doc/tcmalloc.html
- id: 1804
  author: Brian
  author_email: ''
  author_url: ''
  date: '2008-07-03 03:27:00 -0500'
  date_gmt: '2008-07-03 03:27:00 -0500'
  content: |-
    > And even with a 64-bit binary, you
    > really don’t want to mmap an entire
    > 42GB data file into memory, trust me.

    Well I don't trust you.  I currently and routinely mmap in 10+TB in one shot on a 64bit machine.
    So what's the problem ?  Elaborate plesae?
- id: 1805
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-07-03 03:27:00 -0500'
  date_gmt: '2008-07-03 03:27:00 -0500'
  content: |-
    > Well I don’t trust you.

    Well, as it turns out, Brian was right not to trust me. I was too hasty in condemning the all-at-once mmap.

    Here's a test app:

    <pre class="htmlize">
    <span class="constant">boost</span>::<span class="constant">iostreams</span>::<span class="type">mapped_file_source</span> <span class="variable-name">source</span>(<span class="type">argv</span>[1]);
    <span class="type">unsigned</span> <span class="variable-name">lines</span> = <span class="constant">std</span>::count(source.begin(), source.end(), <span class="string">'\n'</span>);
    <span class="constant">std</span>::cout &lt;&lt; argv[1] &lt;&lt; <span class="string">": "</span> &lt;&lt; lines &lt;&lt; <span class="string">" lines"</span> &lt;&lt; <span class="constant">std</span>::endl;
    </pre>

    As you can see it just counts the number of \n characters in the requested file. I ran this on the Wide Finder 2 full data set, and here's what happened:

        ~/wf2/ 512> time ./readmmap /wf1/data/logs/O.all
        /wf1/data/logs/O.all: 218201129 lines

        real    16m0.565s
        user    7m42.454s
        sys     7m53.235s

    Two important things to note here. First, obviously mmap-ing the whole file works as advertised. But more importantly, it seems that my Wide Finder 2 implementation is *already* running at I/O speed.

    But other Wide Finder 2 implementations are going faster, which raises the obvious question as to how. mmap is traditionally the fasted form of I/O, given that it doesn't have to copy the data from kernel space into user space. But obviously that rule doesn't hold any longer, at least for Solaris.

    More investigation needed, I feel.
- id: 1806
  author: Sunny Kalsi
  author_email: thesunnyk@gmail.com
  author_url: http://blog.quaddmg.com
  date: '2008-07-03 03:27:00 -0500'
  date_gmt: '2008-07-03 03:27:00 -0500'
  content: |-
    Could it be that these implementations are reading from the file sequentially? If you read from the file sequentially in tiny chunks, dynamically starting threads and letting them die, you might get better results than using something which will possibly cache your data or maybe cause your disk to do random reads instead of sequential. If it were me I'd try something like this:

      1. Have 1 thread keeping stats.
      1. Have dynamically starting threads on block boundaries - i.e. read 4k at a time (or whatever the HDD's block size is) and start the thread with that instead of explicitly searching for a newline. These will send messages to two threads. One for the statistics, and another for a "residual" (a message not ending a line).
      1. Have another thread which waits for residuals and matches them up. Once it gets a bunch of em, it can dynamically start one of the threads in (2).

    The only downside is the mallocs. IMO you need to copy data or else you're hosed from a multi-threaded perspective. Just thinking out loud here...
- id: 1807
  author: Marc
  author_email: marc.glisse@gmail.com
  author_url: ''
  date: '2008-07-03 03:27:00 -0500'
  date_gmt: '2008-07-03 03:27:00 -0500'
  content: |-
    Hello,

    what compiler options are you using? In particular, are you making use of prefetch? Specifying a page size? On something as simple as the exemple that counts the newlines it could make a difference.
---
`<movie-trailer-guy>` Many months ago he attempted Tim Bray's first [Wide Finder in C++](/archives/2007/10/9/wide-finder-in-c), mainly as a coding exercise. Back then the goal was readability and conciseness. This time ... it's performanceal. `</movie-trailer-guy>`


<a id="more"></a><a id="more-3049"></a>

#### Targeting the Hardware of the Future

Computer architecture evolution is currently in the process of changing direction. Instead of CPUs becoming progressively ever faster, they are going "wider". This means more processing cores, each of which is relatively low-powered. The combined processing power of multiple cores is greater than is achievable with traditional single core architectures, but requires new programming techniques. These techniques are perhaps well-understood at a theory level, but the Wide Finder project is an attempt to put theory into practice with real-world tasks by everyday coders, such as myself.

The goal of a [Wide Finder 2](http://wikis.sun.com/display/WideFinder/Wide+Finder+Home) implementation is to produce some simple statistics from a very large (42GB) data file. The target machine is a Sun Fire T2000 with 8 cores (32 threads) and 32 GB of RAM. The task is relatively simple: we have to read the file, which contains web server log entries, and produce some elementary statistics such as the top 10 pages by hit, the top 10 clients, and so forth. Obviously it's I/O bound ... or is it?

I attempted this in (hopefully) idiomatic C++, using the [Boost](http://www.boost.org/) libraries. For those unfamiliar with Boost, you can think of it as the non-standard library, or maybe the unofficial standard libary. Basically if you're not using Boost libraries today, you soon will be, because many of the them have gone on to form the basis for the TR1 standard library extensions, and hence targeted for inclusion in the next official C++ standard, known as C++0x. Thanks to Boost, my code is completely portable, compiling on both gcc (on my Mac) and Sun Studio compiler (on the T2000) without even a single `#ifdef`.

#### The Results, So Far

So, C++ should be able to whip all those other languages like Java into submission you might think, right? Well, I think the [results](http://wikis.sun.com/display/WideFinder/Results) speak for themselves. My time of 16 minutes is prettymuch in the middle of the pack. Not bad, but not outstanding either, and still behind some of the Java (or JVM-based) implementations. I have a few more optimisations up my sleeve though, so we'll see how they pan out.

However the clear winner in my view, and hence worthy of much more recognition than it currently enjoys, is [OCaml](http://caml.inria.fr/ocaml/). With a run time of 5 minutes this is perilously [close to the raw I/O speed](http://groups.google.com/group/wide-finder/browse_thread/thread/06cf51fbbd4774e0) sustainable on this box. Not only that but it was all done with ~150 lines of code which is frankly amazing (especially compared to my ~500 line C++ implementation). So OCaml is definitely a language to look at, in my humble opinion.

Hit the links from that results page for some often fascinating insights from the other Wide Finder implementers.

#### How To Go Wide

Fundamentally I think my approach is fairly similar to many of the other Wide Finders. This was to divide the input file into chunks, then walk through each using multiple threads. Each thread accumulates statistics in the form of hash tables. The individual hash tables are then merged before finally being sorted to produce the top-10 reports.

I want to share in detail some of the techniques that I used but like I said I'm still refining them. For now let me just point to a couple of key techniques that got me into contention for this project:

 * When it comes to this much data, you can't afford to copy anything. This means I/O using `mmap`, and doing as much processing "in-place" as possible. For C++ this also means throwing out the `iostreams` library (even though it is otherwise quite well suited to this type of task, as demonstrated previously). And even with a 64-bit binary, you really don't want to mmap an entire 42GB data file into memory, trust me [**Update:** Or maybe not. See [comment](#comment-3058) below]. So I ended up with some quite ugly code to deal with mmap-ing segments of the input file while respecting chunk (ie line) boundaries and page alignment boundaries.

 * Multi-threaded C++ applications are always at risk of experiencing contention, but this is especially so when it comes to memory allocation. Doing too much allocation can kill any parallel processing you do with C++, because `malloc` and `free` both grab global mutexes (or worse, spinlocks) prior to doing their stuff. To solve this problem I ended up using a custom thread-specific memory allocator based on the Boost.Pool library. This minimises the number of times that the thread grabs memory during the normal course of operation. Code forthcoming.

Mad props to Shark, which is part of the Mac OS X developer suite. It pinpointed my bottlenecks  very quickly and simply. An indispensable tool, don't jump over *this* Shark.

#### Future Work

So I've got some more ideas on how to go even wider, and I'll update here with the results. Basically it's applying the above two techniques more thoroughly; minimise copying of data, and minimise memory allocation. (In particular the Boost.Regex library is next on my list to convert to using a thread-specific memory pool). Will let you know how it goes.
