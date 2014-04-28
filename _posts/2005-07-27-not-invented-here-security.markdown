---
layout: post
status: publish
published: true
title: Not-Invented-Here Security
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 122
wordpress_url: http://girtby.net/2006/12/26/not-invented-here-security
date: 2005-07-27 15:55:04.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments: []
---
Another security post, this time attempting to correct a bit of [revisionism commited by Microsoft's GM Platform Strategy, Martin Taylor][1]:

> [...] one of the reasons why I scoffed at the notion that Linux is more secure, because people didn't really understand
> buffer overruns and port 80 and I/O issues 10 years ago.
>
> When you look at the issue of buffer overruns, eight to 10 years ago in software development, you did not know
> how much space you might need for something so you just create a big buffer zone to allow things to happen. Who
> knew that people could go exploit that and use that buffer space to do malicious things?

That's right kids, dynamic memory allocation was unknown 8&ndash;10 years ago.  What nonsense.

But the key point he seems to be making is that "people" didn't understand about buffer overflows at that time. This is also nonsense. The problem is not that these vulnerabilities where unknown, it is that Microsoft weren't paying attention. The "people" he's talking about are actually "Microsoft people".

In 1988 the [Morris worm](http://en.wikipedia.org/wiki/Morris_worm) infected 10% of the hosts on the Internet by exploiting known vulnerabilities, including buffer overflows. Apparently there were no lessons for Microsoft from this event.

Microsoft was also apparently unaware of [CERT](http://www.cert.org/nav/index.html), who  started issuing advisories for buffer overflow vulnerabilities in 1995 (AFAICT), like [this one in sendmail](http://www.cert.org/advisories/CA-1995-13.html).

So 8&ndash;10 years ago &mdash; the time period *nominated by Taylor* above &mdash; there existed many well-known classes of security vulnerability that are still relevant today, including the specific examples he cited. But *even then*, Microsoft's ignorance towards, or unwillingness to learn from, these security vulnerabilities was apparent to most in the industry. An [article published in the November 1997 edition of Byte magazine][2] was scathing:

> The Internet is largely a network of Unix computers, so hackers aimed their sights on the thousands of Sun, Hewlett-Packard,
> and IBM servers on it. NT was largely ignored. Microsoft's marketing juggernaut changed that. The hacker community targeted
> NT security starting in the fall of 1996, and the rash of security breaches has been relentless ever since.
>
> The shame of it is that none of these threats are new to the security world. Why does an OS only five years old (compared to
> Unix's 25-year history) have these problems? NT may be another example of the veracity of Santayana's statement that "those
> who cannot remember the past are condemned to repeat it."

We've been repeating it ever since.

[1]: http://news.com.com/Microsofts+eye+on+open+source+-+page+3/2008-1082_3-5796496-3.html?tag=st.next
[2]: http://www.byte.com/art/9711/sec6/art3.htm
