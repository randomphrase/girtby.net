---
layout: post
status: publish
published: true
title: Negative Result Bias
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Continuing the tradition (started [last post](/archives/2006/05/27/a-tale-of-two-isps/)) of reporting heroic and non-heroic failures, here are some of the other things that I have failed to get working successfully in recent months. Never let it be said that Girtby.net suffers from positive result bias, although if I get any of these projects working successfully, you can bet I'm going to gloat about it.

  In the meantime, read on for some tales of woe.



wordpress_id: 190
wordpress_url: http://girtby.net/2007/04/28/negative-result-bias
date: 2006-05-27 23:41:26.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments: []
---
Continuing the tradition (started [last post](/archives/2006/05/27/a-tale-of-two-isps/)) of reporting heroic and non-heroic failures, here are some of the other things that I have failed to get working successfully in recent months. Never let it be said that Girtby.net suffers from positive result bias, although if I get any of these projects working successfully, you can bet I'm going to gloat about it.

In the meantime, read on for some tales of woe.



<a id="more"></a><a id="more-190"></a>


#### Snort on the WRT54G

In short: no [snort](http://snort.org/).

One of the things I wanted to put on my router when I first installed [OpenWRT](/archives/2005/06/19/can-your-router-do-this/) linux was the snort intrusion detection system. Not because I particularly enjoyed seen the thousands of intrusion attempts from pwn3d machines all over the world, but mainly because I wanted to learn more about intrusion detection.

I got snort going using binaries that some dude posted on the OpenWRT forums. Unfortunately, with anything resembling a recent [ruleset](http://www.snort.org/rules/) from sourcefire, snort would consume all the memory on the router. Pruning the ruleset down to the bare minimum &mdash; via some admittedly brute-force hacking and slashing &mdash; I was able to get it running with a few hundred KB left:

	Mem: 30024K used, 532K free, 0K shrd, 28K buff, 1748K cached
	Load average: 0.40, 0.11, 0.03    (State: S=sleeping R=running, W=waiting)

	  PID USER     STATUS   RSS  PPID %CPU %MEM COMMAND
	  611 root     S        344     1  1.7  1.1 crond
	  875 root     S        20M     1  1.3 69.3 snort
	...

(Note the 69% memory usage figure for the snort process)

I thought I had something working but it quickly became apparent that my changes would be required for each and every subsequent update to the ruleset. And in the likely event that the new rulesets would require more memory than the previous ones, it would require further pruning and tweaking. At this point it all became too hard.

A pity really. I had it logging intrusions to an NFS-mounted filesystem hosted on my FreeBSD box, where it was picked up by a barnyard process and inserted into a MySQL database. I also had the ACID web-based console working.

All is not lost though, the next plan is to set up a receive-only ethernet cable to sniff my own incoming and outgoing packets, and run snort directly on the FreeBSD box where memory is plentiful.

#### DDS Tape Drive

So you might recall me carefully articulating my [reasons for getting a tape drive](/archives/2006/03/28/you-only-have-to-backup-the-stuff-you-want-to-keep/) and [patting myself on the back](/archives/2006/03/27/ultimate-boot-cd-4-the-win/) for getting the $100 eBay-sourced drive working.

Well. Umm. How can I put this?

It died.

It died before I could even get it out of testing mode and starting to rely on it for everyday backups. Which in itself is a good thing I suppose.

Towards the end, the drive started to demand more and more cleanings from the cleaning tape. Then my solitary cleaning tape was used up. Then I ordered some more cleaning tapes. The brand-new cleaning tape did not cause the "clean me" LED to stop flashing. I finally realised that something was really wrong when it stopped mounting or even formatting tapes. And I finally realised that the drive was dead when the diagnostic tests which were passing when I bought the drive were suddenly failing.

Oh dear. I *knew* there was a reason why these drives typically go for $1000 or more when new, and only $100 second-hand on eBay.

The plan now is to get it serviced/cleaned. That is, unless someone &mdash; perhaps the service technician &mdash; can convince me to ditch it entirely and go with a modern backup device.

#### Mirrored Disks

I haven't mentioned this before, but the other part of my backup plan was to have a redundant drive array for online storage. It's the raison d'etre of my FreeBSD box. For a while now two 250GB Western Digital drives (now probably on their last legs) have been performing the sacred duty of looking after all my <del>copyright violations</del> important documents.

Well that's not going so well either. I have been experiencing mysterious, but fairly minor, disk corruption with the mirrored drive array. When I first installed it I used [`<scarequotes>`hardware`</scarequotes>`](http://linux-ata.org/faq-sata-raid.html) RAID via a Promise SATA card.

Figuring it was some sort of incompatibility with the card, I re-created the disk mirror using the GEOM disk framework feature of FreeBSD. This is a *very* nice feature of FreeBSD, and saved me lots of time as I was able to mess about with the configuration of my drives without rebooting.

Anyway after changing over it seems that I still am getting the disk corruption when the drives are mirrored using GEOM. But the *wierd* thing is that when I disabled the drive mirror, and reverted to using just a single drive (leaving the other one idle), the drives performed flawlessly. In other words RAID was *introducing disk corruption*!

After a few pleas for help, it turned out that the problem is due to a basic incompatibility between the "SoftUpdates" feature of the FreeBSD UFS filesystem (which as the name implies delays certain writes to the filesystem structures in the name of performance) and the write caching of the controller. This is a known problem in FreeBSD land, documented in `tunefs(8)` no less. Basically the controller reports that a write to the disk has completed and SoftUpdates gets confused. Most of the time it's not a problem, just with certain combinations of controllers and (evidently) configurations.

The only workaround known is to disable IDE write caching &mdash; and some releases of FreeBSD have done exactly this. But the performance hit is huge: a simple write benchmark dropped from 36 MBytes/s down to 6 MBytes/s on my system when write caching was turned off. Which is why other releases of FreeBSD have turned the caching back on again!

So I'm kindof stuck. Maybe a new controller will help. Maybe a whole new system. Maybe I can just live with the dismal write performance.

Regular readers should know [which option I'm leaning towards](/archives/2004/12/22/hardware-upgrade/).
