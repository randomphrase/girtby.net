---
layout: post
status: publish
published: true
title: Required Viewing
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 2139
wordpress_url: http://girtby.net/2007/11/13/required-viewing
date: 2007-11-06 22:39:00.000000000 -06:00
categories:
- Nerd Factor X
- Linkpimpin'
tags:
- c++
- development
- memory
- performance
- architecture
comments:
- id: 1637
  author: Tom
  author_email: tlynch@mediaware.com.au
  author_url: ''
  date: '2007-11-06 22:39:00 -0600'
  date_gmt: '2007-11-06 22:39:00 -0600'
  content: |-
    Functional languages, or hybrid languages with clearly demarked separation of conventional and functional code (NOT what Python does), may provide some of the answers, because functional code deals with data that's assumed immutable, so "state" (which is the chief fly in the ointment when it comes to concurrency) goes away to a large extent.

    Scala is a really interesting hybrid language, although I regret that it only targets Java bytecode or MSIL.

    A language like Haskell (not that I'd suggest it comes anywhere near being the sort of silver bullet I'm talking about) usefully provides the expressiveness needed to model concurrent programming solutions that we will probably turn to in the future, like transactional memory, in a formally verifiable way.
- id: 1638
  author: Brendan
  author_email: bjkeefe@bjkeefe.com
  author_url: htttp://bjkeefe.blogspot.com/
  date: '2007-11-06 22:39:00 -0600'
  date_gmt: '2007-11-06 22:39:00 -0600'
  content: |-
    Thanks for the recommendation.  I enjoyed the talk quite a bit.

    Without being too much of a Pollyanna, I do think Sutter exaggerates the scope of the problem a little.  I don't dispute any of his claims about pipeline and latency issues, but for the vast majority of regular computer use, this isn't a noticeable problem.  I'm sure it's real for video processing and other computationally intensive applications, but the real problem with perceived slowness these days is (1) how long it takes applications to load in the first place (Java, for example, has gotten unbelievable) and of course, (2) network bottlenecks.

    That said, I recognize that Sutter was talking to a select audience, one that is on the cutting edge of programming, and that it always matters to this sort that every problem be addressed.  I'm glad for such people.
---
If you're at all interested in computing technology you can't help but be amazed at the advances in CPU power over the last few decades, Moore's Law, blah blah blah. But a few seconds pondering this invariably provokes the question as to how long this party can last.

The commonly accepted wisdom is that CPUs have gotten about as fast as they are likely to go in terms of sheer clock speed, and now manufacturers are turning to multiprocessing to provide more processing power for a given price point. The recent Intel price drops which made the quad-core Q6600 CPU available for less than AUD400 are a highly relevent (and welcome) data point to illustrate this trend.

This raises lots of hairy questions for developers, such as "how are we going to design our software to run efficiently in a multi-processing environment?" The previously-linked [wide finder](http://www.tbray.org/ongoing/When/200x/2007/09/20/Wide-Finder) experiment is an attempt to explore some of these issues. And it's pretty obvious that so far there is no silver bullet.

But wait, it gets worse. I will point you to a long but highly thought-provoking presentation from Herb Sutter. Turns out we are *already* hitting major architectural hurdles in the form of memory access limitations, and we'll need to find some solutions for these *before* tackling the parallel computation problem.

Sutter's presentation is deeply technical, but still quite accessible, and delivered with an engaging style that makes it [required viewing](http://herbsutter.spaces.live.com/blog/cns!2D4327CC297151BB!304.entry). Highly recommended.

I recently had some experience diagnosing some memory-related performance problems (not quite in the same class as that discussed by Sutter, but similar) and I have to say there is a serious deficit in the development tools for these kinds of problems. Currently we need to look aggregate behaviour over multiple iterations to isolate some of these problems, and this is a difficult and error-prone approach. For example, check out Sutter's technique to discover the memory cache line size in code. In the future it would be great if we could monitor cache misses, pipeline stalls, page faults, and other performance-impacting events *within the debugger*.

These issues also make me wonder about how higher-level languages are going to provide appropriate abstractions to avoid the performance problems. For example, garbage collection is a major win for programmer productivity but it does encourage memory usage patterns that are not always conducive to performance given architectural limitations in the underlying hardware. The same abstraction problems affect C/C++ of course but at least there is the option to go "bare-metal" where necessary.

Whatever the answers are here, it's certain there are some interesting times ahead for developers.
