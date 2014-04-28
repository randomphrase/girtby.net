---
layout: post
status: publish
published: true
title: On Not Assisting Remotely
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 144
wordpress_url: http://girtby.net/2008/08/23/on-not-assisting-remotely
date: 2005-10-20 23:25:10.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1282
  author: Chris
  author_email: chris@brainsnorkel.com
  author_url: http://brainsnorkel.com
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: |-
    I haven't tried it, but have you looked at <a href="http://ultravnc.sourceforge.net/addons/singleclick.html" rel="nofollow">this</a>.  So you should be able to work something out.

    From the site:

    <blockquote>
    UltraVNC SC is a mini (166k) UltraVNC Server that can be customized and preconfigured for download by a Customer. UltraVNC SC does not require installation and does not make use of the registry. The customer only have to download the little executable and Click to make a connection. The connection is initiated by the server, to allow easy access thru customers firewall.
    </blockquote>

    The grammar's not as good as FogCreek, but hey, it's worth a shot.
- id: 1283
  author: Sunny Kalsi
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: I do remember seeing workarounds for NAT with remote assistance...
- id: 1284
  author: Sunny Kalsi
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: |-
    http://www.microsoft.com/windowsxp/using/networking/learnmore/tips/jackson1.mspx

    Shock!
- id: 1285
  author: Matt
  author_email: ''
  author_url: ''
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: Why not just run Netmeeting and share your desktop?  Works for me just
    fine behind a firewall and its free and built-in to XP.  Start-- Run-- conf.exe
- id: 1286
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: |-
    Sunny:

    Oh great, so I get to walk my mum through setting up port forwarding on a router that I know nothing about and can't see?

    No thanks.

    Matt:

    I guess that could work too, *if* I set up the required port forwarding on my router.

    So far Chris' suggestion of UltraVNC is looking like the most likely candidate.
- id: 1287
  author: Garth T Kidd
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: I love UltraVNC, but it reacts poorly to fast user switching and -- lacking
    reflectors -- can't work if both you and your mum are behind NAT firewalls. Payware
    solutions include WebEx and GoToMeeting, but both pursue monthly charges. :|
- id: 1288
  author: Garth
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious/com/
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: Aha! UltraVNC SC (a new thingy since I last looked) bypasses the user switching
    by running as the user who ran it, and supports repeaters. If you can SSH to a
    public IP address (say, your web provider) with a reverse connection tunnel to
    your own PC, you're cool. Still an awful lot of work, but it sure beats USD$10/month.
- id: 1289
  author: Dylan
  author_email: girtby@dylanjay.com
  author_url: ''
  date: '2005-10-20 23:25:10 -0500'
  date_gmt: '2005-10-20 23:25:10 -0500'
  content: I used http://www.vseelabs.com which works quite well (but isn't cross
    platform). festoon.com also works. both are free and do tunneling transparently.
---
I want to help my dear mother, who lives thousands of kilometres away, to set up her iTunes software and download the [John Doyle lecture](/archives/2005/10/10/john-doyle/) onto her iPod Mini. I guide her to the Apple site, and for whatever reason we can't download it.

In order to fix the problem I really need to see what's on her screen. I tried two different tools, and completely failed.

#### Microsoft Remote Assistance

Windows XP has a feature where you can request help from a knowledgeable person, and they connect to your computer, and remotely control it for a bit. Sounds like just the ticket, right?

Well apart from subjecting us to an infuriating wizard that asks a whole lot of useless information and provides no feedback on what it's doing, Microsoft Remote Assistance has one major flaw. It will not work behind a NAT. You can verify this yourself by generating a remote assistance request file, opening it in a text editor, and marvelling at the private IP addresses embedded within.

My conclusion is that Microsoft Remote Assistance is useless to just about 90% of users likely to need the feature. And I'm being kind, I should say it is a complete <acronym title="Waste Of Fucking Time And Money">WOFTAM</acronym>. It puts the Ass into Assistance.

Windows XP, and hence the Remote Assistance feature, came out in 2001, almost a year *after* [RFC 2993](http://www.rfc-archive.org/getrfc.php?rfc=2993) described <cite>The Architectural Implications of NAT</cite>. Who wrote that, you might wonder. Why, only someone at Microsoft. There's really no excuse for *anyone* to perpetrate this kind of NAT nonsense in this day and age, but surely you expect better from the guys who *write the RFC*?

#### Fog Creek Copilot

So when I read [Joel's problem statment](http://www.joelonsoftware.com/articles/AardvarkMidtermReport.html) for his new Copilot venture some months ago, I initially wondered what the shortcomings were in Microsoft's Remote Assistance that justified building such a product. Now I know.

Anyway the [Copilot](http://www.copilot.com) product/service has been released, and we gave it a try. I have to say that it is very well-conceived. You pay-per-incident with a 2 minute free trial. The software is easy to download and run. I had the client software up and running quickly, and my mum had the server side running a few minutes later.

And when I say "running" I mean "producing error messages".

When she started the application it said (apparently) "detecting proxy settings" for a few seconds, then eventually decided that it couldn't connect to Fog Creek's servers, and produced an error message.

Fair enough, you might argue, there's something wrong with her computer. To which I would say "like, duh!" (or perhaps something more witty). Remember the use case here? The *precondition* for using the tool is that there is a problem!

Now I'm not expecting miracles. If the next-door neighbour's cat has chewed through the ethernet cable, there's not much any software can do to about that. But here's the thing I can't understand: my mum's computer, including the internet connection and whatever is wrong with it, was nonetheless *working well enough to download the software* in the first place. There was obviously some form of connectivity, so why couldn't the software to do what it said it would do?

So buggered if I knew what to do next. I gave up.

I'll be down at her place at the end of the year, and will hopefully sort everything out then. I don't know whether I want the problem(s) to be something really simple, or really difficult.

**Update**: As per Chris' suggestion below, we tried UltraVNC SC which didn't work. Gave no error message, just quit. At least that's what I was told.

Of course, this was *after* the horrific experience of emailing an exe file. In order to get around whatever anti-spyware and anti-virusware software my mum has installed, I ended up shipping an encrypted .zip file containing the .exe. For some reason she also had Stuffit for Windows installed which insisted on putting up the "associate file types" dialog box *every single time* it was launched.

Gee, remote debugging is fun.

**Update 2**: [It turned out to be a rogue firewall](/articles/2006/01/10/windows-for-smarties).
