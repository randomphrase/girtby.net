---
layout: post
status: publish
published: true
title: Tiger Review^W Retrospective
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  This post started as a review of the latest operating system revision from Apple, known as Tiger. Languishing in my to-blog pile for too long, I've decided to repurpose it as a retrospective, just in time for next month's <acronym title="World Wide Developers Conference">WWDC</acronym> when Tiger's replacement is expected to be announced.



wordpress_id: 198
wordpress_url: http://girtby.net/2007/02/21/tiger-revieww-retrospective
date: 2006-07-23 00:15:03.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1444
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2006-07-23 00:15:03 -0500'
  date_gmt: '2006-07-23 00:15:03 -0500'
  content: |-
    <p>Disagree with you on Spotlight. Sure, its silly that it tries to search as you type, but it saves my bacon every day.</p>

    <p>Who was that person I emailed last year? Which proposal has the network diagram with a cisco in it? - I can find them in a second. I've stopped trying to file documents carefully because I'm so confident I can find them again.</p>

    <p>While it's not Tiger, iTunes support for Podcasting has changed the world. Take a look at what our local government broadcaster has turned into because of the mass accessibility of podcasts: http://www.abc.net.au/services/podcasting/</p>
- id: 1445
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-07-23 00:15:03 -0500'
  date_gmt: '2006-07-23 00:15:03 -0500'
  content: |-
    <p>marxy: Well I've found Spotlight to be highly unreliable for searching files. It's frustrating that you can't easily just search by name, without also searching by contents and without internalising the wierd query language. Agree that it seems to work OK when searching in Mail though.</p>

    <p>As for iTunes, totally agree. I left it out of this post because it's technically part of iLife, and not the base OS (although it might as well be).</p>
- id: 1446
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2006-07-23 00:15:03 -0500'
  date_gmt: '2006-07-23 00:15:03 -0500'
  content: <p>⌘F in the Finder does a good job of finding by name, but I agree Spotlight
    seems a little lacking in it's user interface.</p>
---
This post started as a review of the latest operating system revision from Apple, known as Tiger. Languishing in my to-blog pile for too long, I've decided to repurpose it as a retrospective, just in time for next month's <acronym title="World Wide Developers Conference">WWDC</acronym> when Tiger's replacement is expected to be announced.



<a id="more"></a><a id="more-198"></a>



Let's get this out in the open right now. Without a doubt Tiger is the best desktop operating system that money can buy right now. Which is to say that although it's not quite ready to join the [League of Awesomeness](http://www.zefrank.com/thewiki/The_League_of_Awesomeness), it's certainly not Hard Charging.

#### Short History

For a long time it was worth spending extra dollars to get Apple's esoteric, well-designed, under-powered hardware simply for the purpose of running their operating systems. The OS is good enough to be *the* major selling point of already very impressive hardware. Now of course the hardware is less-esoteric, just as well-designed (perhaps), and in no way under-powered. And is the OS still the main selling point? [Not according to some](http://www.codinghorror.com/blog/archives/000591.html).

But lets cast our mind back to the heady days of April 2005. Every Mac user was anxiously awaiting the sequel to the incredibly successful and influential Panther release. When it was finally revealed and we all got a chance to try it, the initial wave of enthusiasm eventually subsided. The promised [200 new features](http://www.apple.com/macosx/newfeatures/over200.html) turned out to contain just as many hits as misses.

After my experience with Tiger I think I concur with the prevailing view, which can be summed up as: Meh ([paraphrasing](http://www.tbray.org/ongoing/When/200x/2005/11/20/UnTiger)).

#### Hits

Notwithstanding this, there are certainly some cool things in Tiger. As a result I would say Tiger is a worthwhile step forward for Apple's flagship selling point. Here are some of my favourites.

 * &#8984;-ctrl-D = show dictionary definition of any word. This is SOO cool.
 * H.264 codec for quicktime. Just beautiful. (But possible limitations? Apparently it contains only "baseline profile with 1B frame support", whatever that means)
 * File-system metadata-aware tar, cp, rsync, and other tools. Manipulating the bewildering array of complex filesystem metadata is a constant chore for MacOS users, and these tools are a step in the right direction, if [nothing else](http://blog.plasticsfuture.org/2006/03/05/the-state-of-backup-and-cloning-tools-under-mac-os-x/).
 * launchd. An amazing cron/anacron/startup/inetd replacement. Well, [almost a replacement](http://www.dribin.org/dave/blog/archives/2006/04/17/delicious_backup_launchd/), anyway.
 * iCal. Only a minor rev in Tiger, but [I like it](/archives/2005/09/06/ical-ucal-we-all-cal/) anyway.
 * Mail 2.0. Some performance gripes with this one, but other than it's great.
 * &#8984;-opt-+ to magnify screen. Phoar, check out the subpixel rendering on *that*!
 * Character Pallette. Gratuitous unicode character set usage. How did you think I found the &#8984; character in that last item?
 * Default font set. So lovely.
 * So much included by default: Tcl, Perl, Ruby, Python scripting. bash, tcsh, zsh shells. awk, sed, etc. OK most of that was added in Panther and hardly any of it revved in Tiger. Scratch it then.
 * [Built-in VNC Server!](http://www.macminicolo.net/Mac_VNC_tutor.html)
 * Migration Assistant. OK also not new, but just so awesome.
 * [Core Data](http://developer.apple.com/macosx/coredata.html). Amazing stuff to be built into the OS.
 * iSync. Bluetooths all my calendar and contacts to my N70. Very nice.

#### Misses

In retrospect we now know that The Switch took some development resources from the Tiger team. Still, would have been nice to have some of this stuff fixed.

 * No new Finder. What to say about this? Along with the rest of the Mac universe we were seriously hoping that Tiger would be The One That Finally Fixed The Finder. The current finder is so broken in so many ways. My pet hate: I still can't get the Finder to tell me how much disk space is used by items in the Trash.
 * Uninstallers. There are installers, there *should be* uninstallers. WTF?
 * Quicktime Pro $30 tax. This should go down in the annals of marketing as the most egregious case of nickel-n-diming ever. Right, here's your brand new $4000 laptop with all manner of built-in software and features. Oh, you want to play movies full screen? That will be another $30 please.
 * No Sync services without .mac. The $99/year .mac service offering doesn't offer as much disk space as the freebies from Google, Yahoo, etc. But it does let you synchronise your Address Book from one computer to another.
 * Spotlight. Great idea, [poorly](http://www.macworld.com/news/2005/11/15/spotlightanlaysis/index.php) [implemented](http://www.robservatory.com/archives/2005/11/16/spotlights-odd-definition-of-a-match/).
 * A year's worth of updates, and they *still* haven't fixed the wierd colorsync profile bug that I get all the time (along with many others).
 * No upgrades to python or apache.
 * [Quartz 2D Extreme](http://arstechnica.com/reviews/os/macosx-10.4.ars/14). OMG so cool, but *still* vapourware.

#### Yawns

Lastly, the following big-ticket items looked moderately interesting at first glance, but turned out to not live up to their potential, for whatever reason.

 * Dashboard. OK, I use it. But I can live without it.
 * Safari RSS. Useful for introducing the SO into the world of blogs. But she still doesn't read mine (sniff!).
 * iChat AV. Adium whups its ass in almost every way possible, except videochatting. Mostly a yawn, but the jabber (and hence Google Chat) support is nice.
 * Automator. Tried to use it once. Couldn't get it to do what I wanted. Went back to AppleScript, despite its quirks.

So there you have it. Like I said, overall it's an improvement on the previous-best OS in the world. But I have even bigger hopes for the announcements at next month's WWDC. Basking in the warm enveloping arms of the [RDF](http://en.wikipedia.org/wiki/Reality_distortion_field), what wonders will unfold? Let's hope they don't turn out to be yawns a few weeks later.
