---
layout: post
status: publish
published: true
title: Broken Standards
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 64
wordpress_url: http://girtby.net/2006/12/26/broken-standards
date: 2005-01-14 22:06:24.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1017
  author: Garth
  author_email: garth@deadlybloodyserious.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2005-01-14 22:06:24 -0600'
  date_gmt: '2005-01-14 22:06:24 -0600'
  content: 'My favourite is the bug in the 100BaseT autonegotiation spec in which
    they made sure that it all worked if both ends were configured auto, or if one
    is configured auto and the other is configured half-duplex, but if one end is
    auto and the other full duplex then the auto end will decide it''s half-duplex.
    Result: dramatically dreadful performance in one direction. It''s a right bastard
    to diagnose, too, especially if it''s between two switches.'
- id: 1018
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2005-01-14 22:06:24 -0600'
  date_gmt: '2005-01-14 22:06:24 -0600'
  content: |-
    Oh yes of course, how could I have forgotten that one? Especially because I work for a company that makes ethernet switches.

    The way I've heard it explained is that the specification for auto-negotiation was ambiguous and allowed for differing and non-interoperable implementations. If that's the case then this would be a great example of a standards bug.
---
A few days ago I submitted my first story to slashdot - a question to Ask Slashdot - and yesterday it was <a href="http://ask.slashdot.org/article.pl?sid=05/01/11/1528237&tid=128&tid=4">posted</a>:

<blockquote>Just curious what the Slashdot crowd thinks are the worst bugs ever to creep into a standard? For mine, the various security vulnerabilities in WEP would make the grade. Also perhaps the lack of a protocol field in HDLC, and which most implementations added in a non-compatible way. I'm thinking here about bugs which result in partial or total irrelevance of the standard itself, as opposed to just a lack of interest in adopting it.</blockquote>

Although it didn't make the front page, there were plenty of responses. As always on slashdot the quality of responses varies wildly, but it's mostly pretty interesting.

The best responses IMHO were:

<ul><li>Lack of NAT traversal and TLS/SSL-alike hybrid authentication in IPsec. Absolutely agree with this: VPNs are a mess of incompatible protocol additions and/or kludges like PPTP.</li><li>"stateless" NFS. As outlined in the <a href="http://research.microsoft.com/~daniel/unix-haters.html">UNIX Haters Handbook</a>, the NFS protocol is built on top of this totally wrong assumption, to the detriment of all.</li></ul>

One person said that the lack of sender authentication in SMTP was the biggest standards bug. An interesting point, certainly no argument from me that this would have prevented at least some of the spam deluge. But surely the same applies to HTTP - should it have authentication to stop comment spam on blogs, referrer spam on websites, etc etc? Another comment hit the nail on the head by saying that the SMTP standard was written at a time when they couldn't reasonably have forseen the growth of the internet and the problems associated with it. This contrasts with WEP, where the security vulnerabilities in question were already well understood - but they didn't pay attention. I think this goes to the heart of the original request, and the definition of a bug: something that should have been forseen but wasn't.

Many other people suggested standard bugs that struck me as minor bugs, inconsistencies, or just ugliness, but not show stoppers:

<ul>
<li>Many many wrinkles in Java, such as the use of operator overloading in Java for Strings only.</li><li>Microsoft's use of floating point to represent date/time (not sure which standard this might be referring to?)</li>
<li>"Mirc file transfer sends data in packets, and waits for an ack for each packet. Over TCP." (Oops. But is it a standard protocol?)</li>
<li>C++ overloading of bit-shift operators for streams I/O. (Actually I thought that was a nice hack)</li>
<li>The EIDE cable/jumper mess.</li>
<li><a href="http://www1.ietf.org/mail-archive/web/sip/current/msg10808.html">List of Evil SIP ideas</a></li>
<li>Numerous bugs in .Net / Mono network classes. (Oh dear. There's no reason why .Net shouldn't have had a state-of-the-art API.)</li>
<li>Client update problems in IMAP. (<em>Almost</em> a show stopper, by the sound of them.)</li>
<li>Inappropriate deprecation of some HTML tags by the W3C.</li>
<li>Various problems with the W3C DOM. (This may be referring to implementation bugs though? But if the implementations of a standard vary wildly is this not a usability bug in the standard?)</li>
<li>Referer headers in HTTP. (Not sure how or why; must follow this up.)</li>
<li>Some wierd problem with POSIX and leap-seconds. I think the complaint is that they avoided fixing the bug in subsequent revisions of the standard because it would break too many existing clients. Always a problem.</li>
<li>Lack of standard pinouts for RJ-45 serial connectors.</li>
</ul>

Others suggested bugs that seemed to be attributed to a lack of a standard in the first place. For example: "I wish there was a way to install programs common accross all versions of linux." Or the use of MX-record equivalents for services other than mail.

There were the commenters who thought that a standard was flawed by being overhyped. Yes, XML of course. No doubt about the hype level, but it's not a bug in the XML standard itself (see Norm Walsh for a <a href="http://norman.walsh.name/2004/11/10/xml20">list of those</a>).

Oh, <a href="http://justonemorething.com/">just one more thing</a> to note is the effectiveness of the slashdot moderation scheme. There's no way I could have waded through over 200 comments without it.
