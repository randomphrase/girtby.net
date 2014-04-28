---
layout: post
status: publish
published: true
title: Linux.conf.au
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  So there I am at [Linux.conf.au](http://lca2007.linux.org.au/) on Tuesday. As with the previous day, there are lots of "MiniConfs" on fairly specialised topics, and I think it's fair to say that the conference proper didn't really start until the Wednesday. Nevertheless, there are lots of geeks hanging around, chatting to each other. I look over and there's a guy who looks a lot like Linus himself.

  "Naah", thinks I. Can't be him, he would be a keynote speaker or something.

  Next day there is a keynote from [Andrew Tanenbaum](http://en.wikipedia.org/wiki/Andrew_S._Tanenbaum). Conference organiser [Jeff Waugh](http://en.wikipedia.org/wiki/Jeff_Waugh) does the warmup and introductions: "Ladies and Gentlemen ... Linus Torvalds".

  I have a moment of cognitive dissonance: maybe it's one of those in-jokes, referring to the infamous flame wars between ast and Linus when Linux was first released. But no, Linus is there to introduce ast, and in doing so demonstrates what nice guys they both are. And what an idiot I am.

  That was my most memorable moment from the conference. Read on for some other highlights in no particular order.


wordpress_id: 1025
wordpress_url: http://girtby.net/2008/08/23/linux-conf-au
date: 2007-01-21 12:22:00.000000000 -06:00
categories:
- Nerd Factor X
- Personal
tags:
- lca2007
comments:
- id: 1541
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://marxyblog.blogspot.com/
  date: '2007-01-21 12:22:00 -0600'
  date_gmt: '2007-01-21 12:22:00 -0600'
  content: |-
    Thanks for the roundup. Sounds like a great conference!

    We've switched to django from WebObjects in the last year and found it really great. Ruby on Rails has been a great motivator for other frameworks and that's a good thing.

    Note that to get django to run fast you need to use it in FastCGI mode. We use it with lighttpd, which works nicely.
- id: 1542
  author: Kai-Uwe
  author_email: ku.b@gmx.de
  author_url: http://www.behrmann.name
  date: '2007-01-21 12:22:00 -0600'
  date_gmt: '2007-01-21 12:22:00 -0600'
  content: You mention libsave. Can you provide a link to it? I could not find by
    searching for the project. I am locking for a stack debugger under linux.
- id: 1543
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-01-21 12:22:00 -0600'
  date_gmt: '2007-01-21 12:22:00 -0600'
  content: |-
    Kai-Uwe, libsave was a bit of a joke, intended to illustrate the fact that doing data persistence correctly, across many different types of *nix is a surprisingly difficult proposition. Of course not everyone needs to make the same consistency guarantees as MySQL does, so in practice it isn't such a problem.

    But anyway it doesn't sound like what you are looking for. A stack debugger under linux? Not sure how this is different from a normal debugger, in which case gdb is your new friend.
---
So there I am at [Linux.conf.au](http://lca2007.linux.org.au/) on Tuesday. As with the previous day, there are lots of "MiniConfs" on fairly specialised topics, and I think it's fair to say that the conference proper didn't really start until the Wednesday. Nevertheless, there are lots of geeks hanging around, chatting to each other. I look over and there's a guy who looks a lot like Linus himself.

"Naah", thinks I. Can't be him, he would be a keynote speaker or something.

Next day there is a keynote from [Andrew Tanenbaum](http://en.wikipedia.org/wiki/Andrew_S._Tanenbaum). Conference organiser [Jeff Waugh](http://en.wikipedia.org/wiki/Jeff_Waugh) does the warmup and introductions: "Ladies and Gentlemen ... Linus Torvalds".

I have a moment of cognitive dissonance: maybe it's one of those in-jokes, referring to the infamous flame wars between ast and Linus when Linux was first released. But no, Linus is there to introduce ast, and in doing so demonstrates what nice guys they both are. And what an idiot I am.

That was my most memorable moment from the conference. Read on for some other highlights in no particular order.


<a id="more"></a><a id="more-1025"></a>

 * ast's actual keynote. He talked about the goal of reliable operating systems, measured in the number of expected failures per (human) lifetime. Televisions, he quite reasonably claims, never break down. At least, the software that runs them never does. He said the same for cars, DVD players and other embedded applications that do not experience software failures. He also mentioned mobile phones but this was a bad example I thought.

   The new release of [Minix](http://www.minix3.org/) is intended to demonstrate some approaches to reliability in operating systems, with well isolated modules, each of which is small and simple and limited according to the <acronym title="Principle Of Least Authority">POLA</acronym>. I remember using Minix back at university, making changes to the scheduler, recompiling the kernel, copying to a floppy disk and booting a PC from the results. Nice to see that it's still going strong.

   It was a great talk, with abundant humour and valuable information. Some statistically improbable phrases: "You can build Minix in 6 seconds ... for me that's fast enough"; and "If you kill the network driver process every 2 seconds, file transfers go slower".

 * [Chris Blizzard](http://en.wikipedia.org/wiki/Christopher_Blizzard)'s keynote was about really world changing stuff, the <acronym title="One Laptop Per Child">OLPC</acronym>. Another great talk, which I found really inspiring. IMHO if the OLPC project is cut right now it will still have been a success by my reckoning. This is such a worthy project that bucketloads of cynicism and pessimism can be heaped upon it, and it *still* looks like a good idea. There were some OLPCs floating around at the conference but I didn't get a chance to play with one.

 * I don't think [Kim Weatherall](http://www.lawfont.com/) set out to inspire people with [her talk on the OzDMCA](http://lca2007.linux.org.au/talk/176). However one of the main take-aways for me was that the best things that the FOSS movement can do to combat these laws is to "make stuff that people want". Getting FOSS into the hands of Joe Average increases its visibility and so the impact becomes a lot more real, when it comes time to talk about relevant changes to the law. Kim is a very patient explainer and a good speaker too.

 * For more inspiration to do good stuff, you can't really go past [Kathy Sierra](http://en.wikipedia.org/wiki/Kathy_Sierra) who talked about creating passionate users. I don't feel up to summarising it here, but I will note that Kathy is a world class speaker. Very memorable and worthwhile speech.

 * At the other end of the nerd scale, I was fascinated by Stewart Smith's talk on [how everybody gets file IO wrong](http://lca2007.linux.org.au/talk/278). The lengths that you need to go to to get data actually written to a disk are quite astounding. His experience from the MySQL server was very interesting, and the good-natured heckling from the audience &mdash; particularly [Andrew Tridgell](http://samba.org/~tridge/) &mdash; was even more enlightening. I heartily endorse the development of libsave, the open source library which will ensure that data actually is written to disk on a variety of operating systems.

 * I went to a number of talks on subjects that were outside my experience, but enjoyable anyway thanks to the depth of knowledge on display and the common theme of performance optimisation. Greg Banks from SGI explained how he made [NFS suck faster](http://lca2007.linux.org.au/talk/41) on a NUMA architecture; Carsten Haitzler discussed his latest revisions to [Enlightenment][] and how he made his code lightweight and fast; Gavin Sherry enlightened me with his advanced PostgreSQL; and David Miller described his [optimisations to the IPSec stack](http://lca2007.linux.org.au/talk/94) in the Linux kernel and I *almost* understood most of it. Cool stuff though. I think.

 * Malcolm Tredinnick introduced me to [Django](http://lca2007.linux.org.au/talk/246). And after the [hassles](/articles/2006/12/18/saying-goodbye-to-typo) I've had with getting a Rails app to run on shared hosting, the appeal of running with a simple mod_python module loaded directly in Apache is not to be underestimated. (Which is not to say that Django inherently uses fewer resources than Rails, just that Rails apps generally run in a separate process outside of Apache, and hence are more *accountable*). As for Django itself it looks really nice and need to play more with it. Malcolm is a nice guy and we had a good chat about web frameworks and such.

 * It's hard not to notice that the future of computing is multi-core. And that most of these cores are [likely to go to waste](http://www.codinghorror.com/blog/archives/000655.html), at least until we start changing our coding practices. This has been bugging me for a while now, and I had the feeling that language support for concurrent programming was going to have to get a lot better for the overall situation to improve. Andre Pang's presentation on [Concurrency and Erlang](http://www.algorithm.com.au/talks/concurrency-erlang/) was a great introduction to the kind of solution that might make a real difference in a highly-parallel computing world. He also talked about some message-passing concurrency techniques for other mainstream languages which I will *have* to look into.

In addition to all of these highlights I have to say that the atmosphere at the conference was just fantastic. I spent much of the break time just wandering up to random nerds and talking about the conference, the talks they'd seen, what projects they were on, and so forth. The enthusiasm for FOSS to innovate and produce real and meaningful technology was almost palpable. No wage slaves vacationing from their jobs here. I said to Jeff Waugh on the last day that it was the best conference I had been to since the Apple WWDC in 1994.

I'll certainly be trying to get to Melbourne next year.

[Enlightenment]: http://en.wikipedia.org/wiki/Enlightenment_(window_manager)
