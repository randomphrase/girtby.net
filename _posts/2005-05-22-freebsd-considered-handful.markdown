---
layout: post
status: publish
published: true
title: FreeBSD considered handful
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Like most geeks I have a server at home for doing serveral tasks. Today I upgraded it from FreeBSD 5.2.1 to 5.4. This was a slightly daunting experience, which I will now recite.

wordpress_id: 100
wordpress_url: http://girtby.net/2006/12/26/freebsd-considered-handful
date: 2005-05-22 15:27:59.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1135
  author: cmb
  author_email: cbuechler@gmail.com
  author_url: ''
  date: '2005-05-22 15:27:59 -0500'
  date_gmt: '2005-05-22 15:27:59 -0500'
  content: |-
    I wouldn't do an upgrade with the CD or floppies.  Using cvsup and doing a buildworld/kernel and mergemaster is a lot easier, and won't overwrite your passwd file.  I've upgrading a ton of systems in this fashion, and it "just works".

    Richard Bejtlich's Keeping FreeBSD Up To Date article explains this process better than anything else I've seen.  http://www.taosecurity.com/keeping_freebsd_up-to-date.html
---
Like most geeks I have a server at home for doing serveral tasks. Today I upgraded it from FreeBSD 5.2.1 to 5.4. This was a slightly daunting experience, which I will now recite.

<a id="more"></a><a id="more-100"></a>



My server PC is an HP Kayak which, given its 4 GB Ultra-Wide SCSI disk, was probably The Shit back in The Day. The mighty 333MHz Pentium 2 doesn't really cut it any more for interactive use, but as a mostly I/O-bound server it suffices. For many years now I have been relying on FreeBSD as the operating system for this box (or its predecessors). I have tried others (NetBSD, Linux) but come back to [FreeBSD](http://www.freebsd.org) for many reasons.

One of the things you can't say about FreeBSD is that it has a great installer. The mysteries of the FreeBSD installer have yet to reveal themselves to me, so I had been procrastinating on upgrading it, hence the 5.3 release passed me by.

One of the problems with my server is that the CD-ROM drive seems to be non-responsive. Both the OS and the BIOS see it, but it doesn't seem to read disks. For ordinary operating systems this might be a problem, but not FreeBSD. The installer fits onto three floppies, and once it is running it can download the remainder of the OS installation from a nearby FTP site.

So far no problems, except that something went wrong upgrading the `/etc` directory. For some unknown reason it left me with a half-upgraded `/etc`. Booting into the new OS, there are a *lot* of error messages, but at least it gives me a login prompt so I go to work fixing.

Firstly the user database had reverted back to the default one, so I had to log in as root (no password!). Turns out that there is a copy of my old `/etc` directory in `/tmp`, so I reinstate the `passwd` file and friends, to give me back my user accounts. Similar procedure for groups.

Next up, address some of the error messages on startup. These occur mostly as the system is working it's way through the `/etc/rc` files to start services. Many of them were like: `WARNING: $flushroutes is not configured - RTFM! That's rc.conf(5) you idiot!` (I'm paraphrasing).

This one is a little trickier. Googling on the actual error message is helpful, but the suggested solution isn't, at least not immediately. There's a `mergemaster` tool designed specifically for updating your `/etc` directory during OS upgrades &mdash; the name comes from the fact that the new files are merged into your current ones &mdash; but it doesn't work with binary upgrades, instead it is designed for those who have built their OS from source (as you do).

Nevertheless I was able to go through a [trial-and-error](http://somethinkodd.com/oddthinking/?p=20) problem-solving process of installing new source distribution packages into `/usr/src`, re-running mergemaster and seeing what breaks. Eventually I was able to get it to run, and fix up my `/etc` directory. Hooray.

Well mostly fix up anyway. There were a few leftover problems, at least partly due to the fact that I had some ports (i.e. software outside of the core OS) installed that had migrated into the base OS in the new release. So this was a matter of removing my ports and migrating the config files across to use the built-in OS software.

Lastly, and here's the really nice part, I was able to verify that I hadn't totally screwed up everything.

There's a port (why this isn't part of the core OS I have no idea) called [freebsd-update](http://www.daemonology.net/freebsd-update/). Guess what it does? No, it won't do major OS upgrades, but it will check to see if there are updated versions of any of your installed OS software available. Kinda like Windows Update.

But in addition to this, FreeBSD-update also has an <abbr title="Intrusion Detection System">IDS</abbr> mode. When used in this mode, it computes a hash of all of your currently installed software and compares it against a reference for the specific version of the OS you're running! Great stuff, and it confirmed that I hadn't selected the games package during the upgrade. Other than that, it seemed to be telling me that the upgrade was a success. Whew!

[Tradition](/archives/2005/02/01/been-caught-stealin-focus/) [dictates](/archives/2005/03/17/dont-use-wingdings/) [that](/archives/2005/03/31/what-does-this-button-do) I must now compare this experience to the MacOS X equivalent. Operating systems are in general notoriously difficult to upgrade, and MacOS X isn't immune to upgrade problems. Check out [Tom Yeager's Tiger upgrade story](http://weblog.infoworld.com/yager/2005/05/09.html#a52) for an example of how badly it can go. Tim Bray has [minor hassles](http://www.tbray.org/ongoing/When/200x/2005/05/21/OSS-Hell). However, my own migration to Tiger (not strictly an upgrade because of new hardware) went flawlessly. YMMV.
