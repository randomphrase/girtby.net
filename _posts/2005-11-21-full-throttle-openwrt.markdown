---
layout: post
status: publish
published: true
title: Full Throttle OpenWRT
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  The secure shell (ssh) protocol is such a wonderous invention. I can't say (really) how much I rely on this protocol to connect to various boxes scattered about the place, especially my home [OpenWRT](/archives/2005/06/19/can-your-router-do-this/) gateway. It is incredibly useful to be able to get into the home network from anywhere to fix things, copy forgotten files from a home PC, kick off [lengthy operations](http://www.bittorrent.com/), or just keepin' it real and kickin' it freestyle. Whatever that means.



wordpress_id: 154
wordpress_url: http://girtby.net/2008/08/23/full-throttle-openwrt
date: 2005-11-21 22:45:20.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments: []
---
The secure shell (ssh) protocol is such a wonderous invention. I can't say (really) how much I rely on this protocol to connect to various boxes scattered about the place, especially my home [OpenWRT](/archives/2005/06/19/can-your-router-do-this/) gateway. It is incredibly useful to be able to get into the home network from anywhere to fix things, copy forgotten files from a home PC, kick off [lengthy operations](http://www.bittorrent.com/), or just keepin' it real and kickin' it freestyle. Whatever that means.



<a id="more"></a><a id="more-154"></a>


The downside is all these suckaz try to play you for a fool and try to get aww uppity and bust up your crib. OK I'll give up on the faux gangsta talk now. What I mean is this:

    12:45:40 dropbear[9840]: bad password attempt for 'root' from 212.180.4.152:36250
    12:45:41 dropbear[9840]: exit before auth (user 'root', 1 fails): Disconnect received
    12:45:41 dropbear[9843]: Child connection from 212.180.4.152:36444
    12:45:44 dropbear[9843]: bad password attempt for 'root' from 212.180.4.152:36444
    12:45:45 dropbear[9843]: exit before auth (user 'root', 1 fails): Disconnect received
    12:45:45 dropbear[9844]: Child connection from 212.180.4.152:36636

Et bloody cetera. On and on they go with their (presumably) dictionary hacks. I'm only mildly concerned they might guess my root password. I'm more annoyed by it.

So there are a few ways to stop this:

 * Move ssh to a different port. This is a good temporary solution, but eventually they'll just portscan you, find your ssh port and start the dictionary hack. I guess it would slow them down a bit. I have a minor problem with this solution in that my work firewall only allows a limited set of ports for outgoing connections.

 * Firewall based on source IP address. Possible, but do you really think that with my constantly-on-the-go globe-trotting jet-set lifestyle I can really predict where in the world I might want to access my home machine from, from one day to the next? (Or, for that matter, that I might use the word "from" twice consecutively in a sentence?)

 * Dispense with ssh passwords and go to public-key authentication only. I would seriously consider this if I thought that the scripts that are attempting to crack my password will actually recognise that passwords aren't even enabled on a given server and stop trying to guess them. I mean, the box these connections are coming from is probably pwn3ed anyway.

 * [Portknocking](http://www.portknocking.org/). Just too freaky for me, but it's interesting anyway.

Anyway none of these were really what I was after. What I really wanted was to throttle the incoming connections so that they would fail rea-l-l--y s---l-----o------w--------l--------y.

Enter [ipt_recent](http://snowman.net/projects/ipt_recent/). Thanks to this, the magic of the linux kernel, and a helpful person in the [OpenWRT forums](http://forum.openwrt.org/viewtopic.php?id=2892), I was able to set it up so that it throttles connections from an IP address if it receives more than 5 connections in a given 180 second interval. Check it:

    ~ $ ssh wrt54gs

    BusyBox v1.00 (2005.09.14-15:55+0000) Built-in shell (ash)
    Enter 'help' for a list of built-in commands.

      _______                     ________        __
     |       |.-----.-----.-----.|  |  |  |.----.|  |_
     |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
     |_______||   __|_____|__|__||________||__|  |____|
              |__| W I R E L E S S   F R E E D O M
     WHITE RUSSIAN (RC3) -------------------------------
      * 2 oz Vodka   Mix the Vodka and Kahlua together
      * 1 oz Kahlua  over ice, then float the cream or
      * 1/2oz cream  milk on the top.
     ---------------------------------------------------
    root@OpenWrt:~# ^D
    Connection to wrt54gs closed.

    [... four more...]

    ~ $ ssh wrt54gs
    [banner elided]
    root@OpenWrt:~# ^D
    Connection to wrt54gs closed.

    ~ $ ssh wrt54gs
    ssh: connect to host wrt54gs port 22: Connection timed out
    ~ $

Word.
