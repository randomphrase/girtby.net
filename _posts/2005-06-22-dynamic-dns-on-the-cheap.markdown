---
layout: post
status: publish
published: true
title: Dynamic DNS on the Cheap
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Setting yourself up so that you can access your home network using a domain name rather than an IP address is one of those little luxuries you'll come to wonder how you ever managed without, once you have it.

  I've been doing this for a while now in various different forms, but I like my current setup the best. You may not. I report, you decide.



wordpress_id: 111
wordpress_url: http://girtby.net/2007/02/27/dynamic-dns-on-the-cheap
date: 2005-06-22 21:29:41.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1170
  author: Sunny
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: what's wrong with dyndns.org? My router supports it natively, too, so every
    time the IP changes, it auto-re-negotiates. It's not even linux based.
- id: 1171
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: dyndns.org is fine. I used to use a similar service from www.dtdns.com.
    The only trouble with these services is that you get a hostname within their domains,
    not a full domain of your own. I want a full domain so I can do things like set
    up my own (virtual) hosts within that domain, and possibly arrange for reverse
    IPv6 delegation (when I set it up). And besides, $2.99/year isn't exactly going
    to break the bank.
- id: 1172
  author: Chris
  author_email: chris@brainsnorkel.com
  author_url: http://brainsnorkel.com
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: |-
    Thanks!

    Working as advertised on my BSD box's domain name.

    I considered one of the Sveasoft/WRT-supported DDNS providers too, but having a vanity domain name was a factor.
- id: 1173
  author: Garth T Kidd
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: What happens if you're behind a transparent proxy? Does it look for the
    headers that reveal them?
- id: 1174
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: |-
    Interesting question, but I doubt it. Who uses transparent proxies these days though?

    Do the transparent proxies store the original client IP address in their headers anywhere? Without that information in the headers there's no way for registerfly's servers to know. I think if you're behind a transparent proxy you'll have to explicitly set your IP address.
- id: 1175
  author: Garth T Kidd
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: 'You''d be surprised: at one stage, somewhere in the region of 80% of pages
    delivered to Australians at home went through one. Now that HTTP is a dwindling
    proportion of the overall bandwidth consumption compared to P2P, it''s mainly
    a way to improve customer experience rather than save money -- and many carriers
    are deploying P2P proxies.'
- id: 1176
  author: Robert McGann
  author_email: Private@private.com
  author_url: http://gmail.com
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: I use http://www.tzo.com and its been working great for years.  Router
    support in almost every router I've used, and rock solid.  Great way to run a
    small family webserver from my cable modem
- id: 1177
  author: Erik
  author_email: erikindre@msn.com
  author_url: http://erikindre.blogspot.com
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: <p>Great! I have been running some software on my Windows computer while
    using dyndns, but have not found anyting useful for Linux and registerfly. One
    more thing windows lacks....</p>
- id: 1178
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-06-22 21:29:41 -0500'
  date_gmt: '2005-06-22 21:29:41 -0500'
  content: |-
    <p>Thanks Erik,</p>

    <p>Actually <a href="http://curl.haxx.se/download.html#Win32" rel="nofollow">curl is available for windows</a> as well.</p>

    <p>All you need is a decent scheduler. As in, <a href="/archives/2005/08/03/scheduled-task-slippage-and-breakage/" rel="nofollow">not the Windows one</a>.</p>
---
Setting yourself up so that you can access your home network using a domain name rather than an IP address is one of those little luxuries you'll come to wonder how you ever managed without, once you have it.

I've been doing this for a while now in various different forms, but I like my current setup the best. You may not. I report, you decide.



<a id="more"></a><a id="more-111"></a>

Firstly note that I said "cheap", not "free". But [RegisterFly](http://registerfly.com/) currently sells .info domains for US$2.99, which is hard to beat. If you find one cheaper elsewhere, good luck to you.

Once the domain is set up with RegisterFly, you need to get them to turn on dynamic updates. This is done from the "manage domains" page. Once you do this you will be given a password, in the form of a sequence of hex digits.

One of the nice things about RegisterFly's service is that updates are done by HTTP. You get to update your IP address by an HTTP GET request to dynamic.registerfly.com. All you have to do is arrange for this request at the appropriate times. For some people this will be whenever you renew the DHCP lease with your ISP. My ISP gives me a (reasonably) constant IP address, so daily updates are fine.

So I have a [FreeBSD box](/archives/2005/05/22/freebsd-considered-handful/) which is running most of the time, which is set up to make this HTTP request using the [curl](http://curl.haxx.se/) tool. On other unix-alikes this could be done using a cron entry, but I chose to incorporate it into the daily maintenance script that FreeBSD uses. Here is my (edited) `/etc/daily.local` file:

	#!/bin/sh
	#
	# My stuff to do daily
	#

	# Update our Dynamic DNS entry. This reflects the external address, which could change
	# any time as far as we know/care. So update it daily just to be sure.
	/usr/local/bin/curl -s 'http://dynamic.registerfly.com/?domain=<mydomain>&password=<mypassword>&host=@' \
		| grep -o '<strong>.*</strong>'

A few things to note:

 - You don't need to specify the external IP address to use, RegisterFly will work it out based on the source of the HTTP connection. This is really nice, because it means I can run this script anywhere behind my router without extra what-is-my-external-IP magic.
 - The `@` in the host parameter means "this domain", in kinda the same way that `.` means "this directory in the filesystem.
 - curl's output is piped into grep so that I can extract the success/failure text without all the HTML guff. The output of this command is appended to the daily email that FreeBSD sends me.

So there you have it. I guess I'll migrate it to my [new router](/archives/2005/06/19/can-your-router-do-this/) at some point, but for now I'm happy.

**Update**: registerfly changed their server, they now use `<strong>` tags instead of `<b>` tags. Script above updated to reflect this.
