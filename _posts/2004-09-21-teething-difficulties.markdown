---
layout: post
status: publish
published: true
title: Teething Difficulties
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 12
wordpress_url: http://girtby.net/2008/09/04/teething-difficulties
date: 2004-09-21 20:58:14.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments: []
---
So the blog is only two days old and already I'm making "I really should be updating more often" excuses.

Well actually I have a good excuse. OK that's a lie. I was tinkering, and not posting. So now: a post about tinkering.

In an effort to diverge quickly from the standard wordpress blog template, I had a ham-fisted attempt last Sunday at modifying the CSS to look ever-so-slightly different. As is my want, I also played around with some tools to make it easier. Specifically, the excellent ange-ftp mode of emacs, which lets <del>me</del> ... err ... <del>you</del> ... err .. one .. edit files on far away FTP servers in exotic locations like Dayton Ohio or, you know, wherever. Anyway all was going well; I dinked around with the CSS long enough to get it to look only marginally worse than the default. So I left it at that and went to bed.

Next night, pack the offspring off to bed, and fire up emacs for more CSS catastrophes. This time it won't connect to the FTP server. What's going wrong? It worked only the day before! What's going on here? Have I offended the FTP gods, or does the <a href="http://foldoc.hld.c64.org/foldoc.cgi?query=PEBKAS&action=Search">PEBKAS</a>?

Well let's just say that I spent far too long to discover the following facts:

<ol>
	<li>ange-ftp mode actually calls out to the host OS for a command-line FTP client</li>
	<li>My FTP client was using active mode, which doesn't work behind an ordinary firewall</li>
	<li>The WinXP FTP client does not support passive mode</li>
	<li>Luckily <a href="http://www.openbsd.org/faq/pf/">pf</a> is no ordinary firewall, and comes with an ftp-proxy command that can intercept outbound active mode FTP sessions and fix them up. This is way cool.</li>
	<li>Even better, the fp firewall is configurable so that it will allow incoming connections (ie active mode FTP) only when the ftp-proxy doodad is running. Actually it does this based on the username of the process, but either way, this is uber-cool.</li>
</ol>

Unfortunately, I still didn't get it working. Don't know why yet, but at least I worked out why it all worked just a day previously.

Sunday night I was using emacs on MacOS X, <a href="http://www.worldwidewords.org/qa/qa-who3.htm">whose</a> FTP client supports passive mode transfers by default. Monday night I was using emacs on Win XP.

D'oh. It all looks the same in full screen mode.
