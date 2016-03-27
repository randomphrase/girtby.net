---
layout: post
status: publish
published: true
title: A Kamikaze That Doesn't Crash And Burn
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 3783
wordpress_url: http://girtby.net/?p=3783
date: 2009-02-01 21:30:43.000000000 -06:00
categories:
- Nerd Factor X
- Linkpimpin'
tags:
- openwrt
- linux
comments:
- id: 2439
  author: Krishna
  author_email: krishami@gmail.com
  author_url: http://www.thoughtclusters.com
  date: '2009-02-12 06:52:28 -0600'
  date_gmt: '2009-02-11 19:52:28 -0600'
  content: |
    <p>One suggestion not directly related to this post: Can you differentiate the links on your blog with the bolded text? Unless I hover over, it is difficult to make out whether something is clickable. Maybe change the color or have an underline?</p>
- id: 2453
  author: BlueRaja
  author_email: BlueRaja.admin+girtby@gmail.com
  author_url: http://www.blueraja.com/blog
  date: '2009-02-14 08:54:48 -0600'
  date_gmt: '2009-02-13 21:54:48 -0600'
  content: |
    <p>Does OpenWRT have working QoS yet?</p>
- id: 2455
  author: alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2009-02-14 14:46:30 -0600'
  date_gmt: '2009-02-14 03:46:30 -0600'
  content: |
    <p>@Krishna: Yes I was thinking the same thing the other day when looking at an older post. I guess I don't notice the problem so much these days as I tend to use <em>emphasis</em> instead of <strong>strong</strong>. Will have a play with CSSEdit, see what can be done.</p>

    <p>@BlueRaja: Sure does:</p>

    <p><a href="/assets/2009/02/openwrt-qos.png" rel="nofollow"><img src="/assets/2009/02/openwrt-qos-300x168.png" alt="Screenshot of OpenWRT Web interface showing QoS" width="300" height="168" class="alignnone size-medium wp-image-3850" /></a></p>
---
<a href="/assets/2009/02/openwrt-kamikaze.png"><img src="/assets/2009/02/openwrt-kamikaze-300x191.png" alt="Screenshot from OpenWrt&#039;s administration web interface" title="openwrt-kamikaze" width="300" height="191" class="size-medium wp-image-3784 lede" /></a>Long-time readers will know that I'm a [big](/archives/2005/06/19/can-your-router-do-this/) [fan](/archives/2005/11/21/full-throttle-openwrt/) of the [OpenWrt](http://openwrt.org/) linux distribution for home routers.

It's a great little linux distribution that lets you do all sorts of geeky networky things, and is damn reliable to boot. I was a bit [nervous](http://identi.ca/notice/2063594) about the upgrade from the (now) ancient White Russian release, to the new Kamikaze 8.09_RC2 release, but it all went very smoothly.

If you've shied away from OpenWrt in the past because of it's depencency on command-line installation, well shy no more. OpenWrt now includes an excellent web interface called LuCI, which makes admin very simple. Here it is, showing off real-time network statistics, available via a plugin module.

<div class="aside"><p>That big traffic surge? A Mac OS system update. As I was taking the screenshot it kicked off in the background unexpectedly.</p></div>

Modules such as these are the main reason for installing a Linux distro on your router. Different routing modules, statistics and monitoring, security, QoS, application layer proxies, and many more, some with LuCI web interfaces. In short, there's lots to explore if you're at all a network geek (I am).

Although OpenWrt was originally written for the infamous Linksys WRT54, but now available for lots of other routers. Perhaps it is supported on the router you're using *right now*!? Why not [go check](http://wiki.openwrt.org/TableOfHardware)?
