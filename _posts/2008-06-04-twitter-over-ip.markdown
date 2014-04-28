---
layout: post
status: publish
published: true
title: Twitter over IP
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3029
wordpress_url: http://girtby.net/2008/06/04/twitter-over-ip
date: 2008-06-04 10:43:00.000000000 -05:00
categories:
- Nerd Factor X
- Linkpimpin'
tags:
- architecture
- twitter
- end-to-end
- network
comments:
- id: 1793
  author: Gavin Carothers
  author_email: gavin@oreilly.com
  author_url: ''
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: 'I think that XMPP is very good solution for the "Twitter" system, there''s
    already been a good deal of work on the pubsub extensions which would allow for
    the more persistent twitter like service. See: http://www.xmpp.org/extensions/xep-0060.html'
- id: 1794
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://marxy.org
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: |-
    Certainly users are much more likely to be able to get through using HTTP, but Skype appears to have worked around this issue, at least for one to one or small groups.

    I wonder why they didn't just adopt [XMPP][1]?

      [1]: http://www.xmpp.org/extensions/xep-0060.html
- id: 1795
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: |-
    And so long as we're quoting XMPP standards... take [that][1]!

    > (This post is an obvious departure from my usual style of blatant attack pieces in order to score traffic and fame for myself. Normal service will resume shortly.)

    I think you're hatin' on XMPP by not mentioning it in your post.

      [1]: http://www.xmpp.org/extensions/xep-0206.html
- id: 1796
  author: Andrew
  author_email: ''
  author_url: http://alphajuliet.com/
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: Can you elaborate on why they didn't have much choice about using HTTP?  Why
    was something like, say, BEEP, not an option?
- id: 1797
  author: Asbjørn Ulsberg
  author_email: asbjorn@ulsberg.no
  author_url: http://asbjor.nu/
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: Seeing how Twitter's integrated with XMPP already, I'm really surprised
    that they aren't offering a full-fledged API over XMPP, 100% compatible and feature-equivalent
    with the HTTP version. When this option exists, it's all up to the Twitter clients
    (like Twhirl, Twitterrific, etc) to support the new API instead of the HTTP one.
    Over time, this will reduce the load on the HTTP API and thus on Twitter's servers
    alltogether.
- id: 1798
  author: Sunny Kalsi
  author_email: thesunnyk@gmail.com
  author_url: http://blog.quaddmg.com
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: |-
    In the olden days of internet, there were many protocols -- ftp, ICQ, IRC, etc. and a lot of them were not HTTP. Then eventually the people who maintained the firewalls at workplaces started blocking all the ports and a lot of people got annoyed when their software didn't work with NATs.

    The only way to get around both firewalls and NATs was by using HTTP. The issue with both firewalls and NATs is somewhat similar. With HTTP traffic it's easy to determine that the traffic was requested, and who in your network requested this traffic.

    It makes me so sad when I think about all those routers and machines out there which no longer reply to a simple PING... I remember when computers used to talk to their neighbours, tell them what was up, their TTL to their destinations, like good god-fearing components. Computer society is turning into real society.
- id: 1799
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: |-
    Thanks all for the XMPP lovin'. Wikipedia points to some possible [scalability concerns](http://mail.jabber.org/pipermail/standards/2006-February/010028.html) with XMPP and large numbers of participants, not sure if they are still valid.

    But even if XMPP does solve some of these problems, I think there is still scope to look at different network layer protocols. I mentioned UDP multicast, but is anyone else interested in [SCTP](http://en.wikipedia.org/wiki/SCTP)? I think it's very promising, or at least would be if end-to-end was practical.

    Chris: The very existence of the BOSH technique kindof proves my point. Sure, it's possible to come up with workarounds at the application layer for network layer limitations. But these can have unintended consequences.

    Andrew: I think Sunny has sort of answered your question, although it's not accurate to say that HTTP was invented as a firewall bypass protocol. Still, it certainly is the lowest common denominator these days, and if you have a new application it's highly preferable if it can be sledgehammered into a client-server model and crammed into HTTP. If you don't, your users may end up dealing with firewalls, port forwarding, and all that nonsense. Sub-optimal either way.

    I've just thought of a new, catchier title for this post: HTTP is the new TCP.
- id: 1800
  author: Adult Ühler
  author_email: au@theatons.com
  author_url: http://www.theatons.com/
  date: '2008-06-04 10:43:00 -0500'
  date_gmt: '2008-06-04 10:43:00 -0500'
  content: I'm also wondering why not  just use XMPP?
---
Let's solve Twitter's scalability problems, shall we?

So, like most people, I don't know much about the problems there and certainly don't have any solutions to suggest. But I do know there are a certain class of solutions which *aren't* on the table.

If you look at Twitter from a suitably high vantage point you see real-time communication between small groups. People entering short messages and having these messages appear at their peers a small time later. There's also a central archive, but I've heard Twitter described as "public Instant-Messaging" and this seems to characterise it best for me.

In short, Twitter seems more suited to peer-to-peer communication than to client-server. What sort of protocol would it use? I can imagine a protocol which would be probably UDP-based, and which would send tweets to followers either directly from peers or perhaps through a local aggregation point. Large groups of followers could perhaps even use UDP multicast. Archive servers could be reached through network anycast addresses, to allow for greater decentralisation. IPv6 to get universal connectivity. And so on; fill in your own pet network technology here, there are certainly lots of potential solutions.

Instead of these, clients communicate directly with the Twitter servers using HTTP. Not only that, but they *poll* for updates. Bit of an architectural blunder, you might think. Well not really. In fact I don't think the Twitter designers had any choice.

Once upon a time it was possible to deploy new application-layer protocols on the Internet. But those times have passed, it seems. These days, it's HTTP(S) or nothing. And this is *not* the protocol you would choose for carrying tweets, if you had the choice. So the fact that twitter works *at all* over this sub-optimal application-layer protocol is quite an achievement.

This is a great example of the many ways in which [innovation can be stifled](/archives/2006/01/04/making-connections/) by enforcing a lowest-common-denominator.

The impact is of course more widespread than just Twitter. In fact, the so-called end-to-end principle which was one of the fundamental founding principles of the Internet is now all but abandoned in practice. Geoff Huston examines the issue in some detail in a [recent article](http://www.potaroo.net/ispcol/2008-05/eoe2e.html), and it is highly recommended.

Of course, there are no easy answers, either for Twitter or the next application to suffer due to the proliferation of network middleware. But it's certainly an issue that does need to be more prominent.

(This post is an obvious departure from my usual style of blatant attack pieces in order to score traffic and fame for myself. Normal service will resume shortly.)
