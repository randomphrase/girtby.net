---
layout: post
status: publish
published: true
title: It Means What You Want It To Mean
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 1752
wordpress_url: http://girtby.net/2008/08/23/it-means-what-you-want-it-to-mean
date: 2007-05-02 02:48:26.000000000 -05:00
categories:
- Nerd Factor X
- Linkpimpin'
- Provocation
tags: []
comments: []
---
Take a look at [this comparison of server operating systems](http://blog.mon.itor.us//?p=286) from mon.itor.us. What does it tell you?

To me, this data is almost entirely useless.

First off, I'm annoyed by the use of the term "uptime" here. To me, uptime is a measure of time. Specifically, the length of time for which a given server is "up". [Wikipedia](http://en.wikipedia.org/wiki/Uptime) backs me up here. Netcraft [measure uptime](http://uptime.netcraft.com/). What these folks seem to be measuring is *availability*: the percentage probability that the server will respond at any given instant.

So after getting over that, what to make of the information from mon.itor.us? Well they quite correctly acknowledge that the OS is only one of many factors determining uptime. However they haven't isolated any of the other factors.

They have assumed that the quality of hosting ISP, and hence network connectivity, will be constant across all operating systems. However this is not at all obvious to me; instead I would imagine that different hosting companies will prefer one OS over another, hence the distribution will not be even.

A possibly more important factor in determining availability of the server as a whole is the web application itself. The simple static page sites are intrinsicly less complex, and hence more reliable than highly interactive database-driven web applications. Again it is assumed that the distribution of these different types of sites is constant for all operating systems, and again it is not obvious to me that this holds.

The primary conclusion they draw from this survey is that Linux is more reliable than Windows. This seems like a bit of a long bow to draw, especially given some significant WTFs in the data. 6.4% of the sites ran Minix? Really? This seems entirely counterintuitive to me. Not dissing Minix or anything, but is it really more prevalent out there than Solaris? Also, Minix really has a lower availability than Windows? How is this possible, given that the former is explicitly designed for resilience and reliability, and the latter is famous for instability?

In short, it looks like this data is worth what you paid for it, and it probably means whatever you want it to mean.
