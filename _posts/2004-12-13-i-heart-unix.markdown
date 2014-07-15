---
layout: post
status: publish
published: true
title: I ♥ UNIX
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 53
wordpress_url: http://girtby.net/2007/04/10/i-heart-unix
date: 2004-12-13 23:16:20.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments: []
---
I really like UNIX sometimes. My home FreeBSD box has a dying hard drive. It started reporting ominous READ_DMA log entries in the daily emails it sends me (what, your operating system doesn't send you email?). I stupidly ignored these, and a few days later found that it wasn't booting. Attach a monitor to it, I see that it has detected disk errors and helpfully dropped into single-user mode for me to fix.

This is very handy, as I could simply comment out the relevant entry in the `/etc/fstab` file, and continue to boot. Because the failing drive was mounted on `/home`, I ended up with a box that didn't have this directory, but was otherwise <strong>perfectly fine!</strong>. Crisis averted. Box continues to function. I get to continue to attempt to resurrect it at my leisure.

The problem was that the dying drive wasn't responding to `fsck -y`, which is the disk repair tool. So I'm casting around for ideas and find a <a href="http://www.mail-archive.com/freebsd-hackers@freebsd.org/msg46143.html">helpful suggestion</a> on a mailing list to just mount the failing drive read-only. This lets you salvage anything useful without requiring the disk to be in a perfectly consistent state. Hooray for UNIX!

As it turned out there was only a few files of only minor importance (err, actually just the <a href="/archives/2004/11/10/subversion/">subversion repository</a>!), but it was nice to get them back.

A few months back I bought a couple of 250GB SATA drives and Promise RAID controller. I had for a while been running these babies in the FreeBSD box and had been slowly (too slowly as it turned out) migrating data from `/home` to the new mirrored drive array. Guess that will have to happen sooner rather than later.

So there you have it, a fairly happy ending to a disk crash story. Maybe after all these years I'm finally learning something.
