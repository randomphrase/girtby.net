---
layout: post
status: publish
published: true
title: Netgear Bugs
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 75
wordpress_url: http://girtby.net/2008/02/27/netgear-bugs
date: 2005-02-27 09:45:28.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1060
  author: Chris
  author_email: chris.richardson@7layer.net
  author_url: ''
  date: '2005-02-27 09:45:28 -0600'
  date_gmt: '2005-02-27 09:45:28 -0600'
  content: <p>I've got this problem with all broadcast packets. I noticed it first
    because I'm trying to use the router to bridge DHCP from a server. Can't find
    a solution though :(</p>
- id: 1061
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-02-27 09:45:28 -0600'
  date_gmt: '2005-02-27 09:45:28 -0600'
  content: <p>This probably doesn't help you, but I <a href="/archives/2005/06/19/can-your-router-do-this/">ended
    up getting that WRT54G</a>.</p>
- id: 1062
  author: Chris
  author_email: ''
  author_url: ''
  date: '2005-02-27 09:45:28 -0600'
  date_gmt: '2005-02-27 09:45:28 -0600'
  content: <p>Oddly enough so did I (for home) but I'm stuck with these Netgear....
    "things"... at work. BusyBox is the mutts nips!</p>
---
Sometimes Google is the best approach to a technical problem, but other times it's best to just dive in with a packet sniffer.

Just recently The <abbr title="Significant Other">SO</abbr> has been complaining about being unable to print over the wireless network. Plug into the ethernet and printing works just fine. A perplexing dillema.

The printer (Samsung ML-1710, a very nice and cheap laser printer) is hooked up to the FreeBSD server running CUPS. This is in turn connected to a [Netgear WGR614](http://www.netgear.com.au/products/prod_details.asp?prodID=174) wireless router and 4-port ethernet switch. The printer appears in the OS X Printer list as a "shared printer" without requiring any special configuration. Which is nice, when it works.

What was/is happening is that when switching to the wireless network, the Host column in the Printer Setup Utility changes to 0.0.0.0, and printing is no longer possible.

Opening up the packet sniffer (the one built into [Interarchy](http://www.interarchy.com)) and I see what happens in the 'normal' case, when connected to the ethernet network:

	UDP packet from 192.168.0.5:ipp(631) to 192.168.0.255:ipp(631) (101 bytes)
	IP Header:
	 Version: 4; Header Length: 20; TOS: 0; Packet Length: 129
	 Identifier: 17132; Fragment Offset: 0
	 Time To Live: 64; Protocol: 17; Header Checksum: 46379
	UDP Header:
	 Packet Length: 109; Checksum: 60424
	Data:
	1006 3 ipp://0.0.0.0:631/printers/Samsung "" "ML-1710P" "Samsung ML-1710 Foomatic/gdi (recommended)"

	UDP packet from 192.168.0.5:ipp(631) to 192.168.0.255:ipp(631) (112 bytes)
	IP Header:
	 Version: 4; Header Length: 20; TOS: 0; Packet Length: 140
	 Identifier: 64710; Fragment Offset: 0
	 Time To Live: 64; Protocol: 17; Header Checksum: 64325
	UDP Header:
	 Packet Length: 120; Checksum: 63549
	Data:
	1006 3 ipp://lola.geekflash.com:631/printers/Samsung "" "ML-1710P" "Samsung ML-1710 Foomatic/gdi (recommended)"

What each CUPS server does is send out a local broadcast every 30 seconds (by default) advertising the printers that it can serve. I'm still not entirely sure why my CUPS server is sending *two* advertisements, one of which is for the mystery 0.0.0.0 server. But anyway we'll let that one go through to the keeper for now. [Please also ignore my dodgy host naming scheme]

When connected with the wireless network, the first advertisement is the same, but the second one is partially corrupted, with most of the IP header being zeroed out:

	Invalid IP packet (140 bytes), claims 0 byte IP header length
	Data:
	«00»«00»«00»«00»«00»«00»«00»«00»«00»«11»«00»x«C0»«A8»«00»«05»«C0»«A8»«00»«FF»«02»w«02»w«00»x«00»«00»
	1006 3 ipp://lola.geekflash.com:631/printers/Samsung
	"" "ML-1710P" "Samsung ML-1710 Foomatic/gdi (recommended)"

So the mystery (partially) solved. Somewhere in the ethernet-to-wireless transition the **second** CUPS advertisement is corrupted. Yes that does seem like a pretty bizarre bug, but the packet sniffer doesn't lie.

A quick visit to the Netgear support site revealed that I was already running the latest firmware. I tried reverting to the previous version, but that didn't help. So it looks like I've now got an excuse to upgrade to a new wireless router. [WRT54G](http://www.linksys.com/products/product.asp?grid=33&scid=35&prid=601), anyone?
