---
layout: post
status: publish
published: true
title: Wide Finder in C++
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Have you been following Tim Bray's [Wide Finder project](http://www.tbray.org/ongoing/When/200x/2007/09/20/Wide-Finder)? It's an exercise to express a fairly simple task in a manner that will scale across multiple CPU cores. Some of Tim's initial progress with Erlang, and other contributors in different languages, is quite fascinating.

  [Like Tim](http://www.tbray.org/ongoing/When/200x/2007/10/01/WF-Roundup) I was also amused at [Pete Kirkham's C++ implementation ](http://www.tincancamera.com/blog/2007/09/wide-finder-parallelism-and-languages.html) which was purported to be shorter than an initial attempt by an Erlang expert (in Erlang obviously). However on closer examination it seems that Pete's C++ implementation was simply handling the I/O portion with simplified parsing and not the subsequent sorting.

  So as [another](/archives/2007/2/26/kata-four-in-c) C++ coding Kata I decided to have a go. Whereas Tim's goal was to evaluate different methods of expressing algoritms for parallel computation, mine was a lot more modest: just get it running concisely in C++ and compare performance with the raw Ruby version. Here's what I came up with.


wordpress_id: 2047
wordpress_url: http://girtby.net/2007/11/09/wide-finder-in-c
date: 2007-10-09 11:07:00.000000000 -05:00
categories:
- Nerd Factor X
tags:
- c++
- wide finder
- boost
- benchmark
comments:
- id: 1629
  author: Michel S.
  author_email: michel.sylvan@gmail.com
  author_url: http://hircus.wordpress.com/2007/10/16/wide-finder-c-update/
  date: '2007-10-09 11:07:00 -0500'
  date_gmt: '2007-10-09 11:07:00 -0500'
  content: |-
    Hi Alastair,

    Did a similar implementation in C++, but without the multimap -- slower than Ruby in the single-thread case, and on par in speed (but with higher CPU usage) with 2 and 4 threads, on a dual-core machine.

    I guess C++ is not the language for string processing.
- id: 1630
  author: Richard A
  author_email: rjatkins@optusnet.com.au
  author_url: ''
  date: '2007-10-09 11:07:00 -0500'
  date_gmt: '2007-10-09 11:07:00 -0500'
  content: |-
    Tim has started collecting results on each WF implementation on his new toy Sun server ([http://www.tbray.org/ongoing/When/200x/2007/10/30/WF-Results][1]), but it seems he hasn't/can't yet run C++ programs such as yours on this highly minimal platform. Is there anything you can do to help out with this? Is it a problem with building Boost? I'd like to see how the C++ version does against the various speed demons in that table...

    Regarding the explicit iterator usage, you **might** be able to use boost::lambda or boost::bind to keep the code terse (i.e. through the _1 macros), but doing that might just increase the portability problems.

    As far as regex performance goes, C++ is only limited here by the implementation used - there's no silver bullet to the functions in Ruby (or Perl, for that matter). There's no good reason why you couldn't simply embed calls to either of these languages regex handlers in a C++ program to get the best of both worlds.

    One question I have is does the app perform any better if the sorting is done after the filtering is completed? Theoretically, the code needs a global lock on the map before writing new results to it, since two threads may try to increase a count from 0 (not in the map) to 1 simultaneously. Additionally, once there's already a key in the map, that key's entry should be locked for incrementing beyond 1. That would make it a major bottleneck in any multithreaded system. I'm pretty sure the target platform's atomic int behaviour won't save you here (since for expressions like i = i + 1, that's just for the read(i) and write(i), not the whole expression). Don't even think about making this a multiprocess system without some fundamental restructuring...

    That said, I can imagine a sophisticated compiler and library that can automatically determine which data structures can be in which process, and how each would be isolated from the other. Similar (but simpler!) analysis already leads to the inlining and escape analysis done for heap to stack object conversions in some virtual machine-based languages.

      [1]: http://www.tbray.org/ongoing/When/200x/2007/10/30/WF-Results
- id: 1631
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-10-09 11:07:00 -0500'
  date_gmt: '2007-10-09 11:07:00 -0500'
  content: |-
    Excellent comments Richard.

    I have been waiting to see if Tim gets to give my code a run on his 8-core box. For the record, I'm not expecting much; as I said above, my implementation was mainly about conciseness and readability, not performance.

    I did look at boost::lambda and boost::bind but, like I said, they didn't do anything for readability or conciseness. Quite happy to admit operator error though; I haven't had much experience with boost::lambda.

    I've thought a bit about performance lately, particularly in light of [recently-acquired knowledge][1], and would like to tinker some more in this space. A couple of optimisations have presented themselves, mainly as a result of reading about other attempts, particularly the interesting [python implementation][2].

    One thing that the python implementation does is to filter the input lines using a non-regex search first. This allows the classic Boyer-Moore (or whatever) string search algorithms to kick in, which are apparently a lot more efficient than a regex search. I see no reason why I couldn't do the same in my implementation, just using `std::search` even!

    Parallelizing the code is more tricky, obviously, but the same techniques would apply here as with the python implementation: chunk the input and process it in multiple threads. Again, no real obstacle to adapt this to my code.

    There is no need to synchronise writes to the `counts_by_key` map - just give each thread a local copy of the map. You need to synchronise the writes to the `keys_by_count` multimap of course, but again maybe a thread-local multimap might be the way to go, prior to a final non-parallel aggregation step? Something to think about anyway. Like you I have some doubts as to whether there would be any practical benefit here? (Again, Herb Sutter's memory latency talk is looming large)

      [1]: /archives/2007/11/6/required-viewing
      [2]: http://effbot.org/zone/wide-finder.htm
- id: 1632
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-10-09 11:07:00 -0500'
  date_gmt: '2007-10-09 11:07:00 -0500'
  content: '> I see no reason why I couldn'
---
Have you been following Tim Bray's [Wide Finder project](http://www.tbray.org/ongoing/When/200x/2007/09/20/Wide-Finder)? It's an exercise to express a fairly simple task in a manner that will scale across multiple CPU cores. Some of Tim's initial progress with Erlang, and other contributors in different languages, is quite fascinating.

[Like Tim](http://www.tbray.org/ongoing/When/200x/2007/10/01/WF-Roundup) I was also amused at [Pete Kirkham's C++ implementation ](http://www.tincancamera.com/blog/2007/09/wide-finder-parallelism-and-languages.html) which was purported to be shorter than an initial attempt by an Erlang expert (in Erlang obviously). However on closer examination it seems that Pete's C++ implementation was simply handling the I/O portion with simplified parsing and not the subsequent sorting.

So as [another](/archives/2007/2/26/kata-four-in-c) C++ coding Kata I decided to have a go. Whereas Tim's goal was to evaluate different methods of expressing algoritms for parallel computation, mine was a lot more modest: just get it running concisely in C++ and compare performance with the raw Ruby version. Here's what I came up with.

<a id="more"></a><a id="more-2047"></a>

```c++

#include <iostream>
#include <boost/iostreams/device/mapped_file.hpp>
#include <boost/regex.hpp>

using namespace std;

const boost::regex get_re("GET /ongoing/When/\\d{3}x/(\\d{4}/\\d{2}/\\d{2}/[^ .]+) ");

typedef map<string, unsigned> counts_by_key_t;
typedef multimap<unsigned, string> keys_by_count_t;

int main(int argc, char *argv[])
{
  counts_by_key_t counts_by_key;
  for(int arg = 1; arg < argc; ++arg) {
    try {
      boost::iostreams::mapped_file_source mf(argv[arg]);

      boost::cregex_iterator regi(mf.begin(), mf.end(), get_re), rege;
      for(; regi != rege; ++regi) {
        counts_by_key[(*regi)[1].str()] += 1;
      }
    } catch (ios::failure e) {
      cerr << argv[arg] << ": " << e.what() << endl;
      return 1;
    }
  }

  keys_by_count_t keys_by_count;
  for(counts_by_key_t::const_iterator i = counts_by_key.begin();
      i != counts_by_key.end(); ++i) {
    keys_by_count.insert(make_pair(i->second, i->first));
  }

  unsigned n = 10;
  for(keys_by_count_t::reverse_iterator ri = keys_by_count.rbegin();
      n && ri != keys_by_count.rend(); ++ri, --n) {

    cout << ri->first << ": " << ri->second << endl;
  }
  return 0;
}
```

So at 42 lines this one really *is* shorter than the 84-line Erlang version. Not a million miles away from the Ruby version either, in length if not in readability. However, I've made some simplifications, or taken some liberties, depending on your point of view:

 * Firstly, Boost is a third-party library and hence this is not standard C++. Given the (general) difficulty of incorporating libraries into C++ apps this might be more of a problem than on other languages where CPAN/RubyForge/CheeseShop/whatever rules supreme. However I would argue that Boost is such an indispensable part of modern C++ development that relying on it is quite acceptable, even for tasks like this.

 * Also, I'm using Boost's `mapped_file_stream`, which uses a memory map to iterate through the file. This is very useful and quick but obviously places limits on the size of the file. Fortunately it handles oversize files gracefully.

 * That `reverse_iterator` should be a `const_reverse_iterator`, but I had to work around a [gcc bug](http://gcc.gnu.org/bugzilla/show_bug.cgi?id=11729).

 * C++ generic programming purists may be scoffing at my explicit iteration through the containers. Try as I might I could not formulate a way of using the standard algorithms without signficantly increasing the complexity of the code. Inverting the `counts_by_key` map to create the `keys_by_count` multimap sounds particularly like the sort of thing that should be possible using the standard algorithms, but I was unable to work it out.

Removing the explicit iteration may prove to be a useful exercise, in order to get better parallelization. I can picture a class of STL algorithms which are smart enough to automatically distribute work amongst different worker threads, coordinate their shared state, etc. A `parallel_for_each` algorithm perhaps. Fully utilising existing algorithms such as `for_each` seems like a necessary first step towards this goal.

My other goal with this was to look at performance. The C++ version above processes the 200MB file in about **4.5 seconds** on my laptop (running WinXP, code compiled with MSVC++ 8.0).

By comparison the Ruby version runs in **5.0 seconds**. This is pretty damn impressive if you ask me, given that it's *not* using memory-mapped IO.

For an encore I would like to convert the code above to use regular file I/O. An initial attempt to use the `file_iterator` class (from the Spirit library, also part of Boost) was not hopeful; boosting the runtime up to 30 seconds. I also looked at using the standard C++ iostream iterators but the regex matching needs bidirectional iterators, and they aren't.

Oh, and don't blame me that the code isn't [unicode safe](/archives/2007/3/9/c-1-unicode-0). That was part of the brief!
