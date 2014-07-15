---
layout: post
status: publish
published: true
title: Great Moments in Systems Administration, Part XXXIV
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 153
wordpress_url: http://girtby.net/2007/11/10/great-moments-in-systems-administration-part-xxxiv
date: 2005-11-15 11:43:52.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1310
  author: Julian
  author_email: Girtby@somethinkodd.com
  author_url: http://www.somethinkodd.com/oddthinking/
  date: '2005-11-15 11:43:52 -0600'
  date_gmt: '2005-11-15 11:43:52 -0600'
  content: <p>I would laugh, <a href="http://www.somethinkodd.com/oddthinking/2005/06/13/the-printer-episode/"
    rel="nofollow">but...</a></p>
- id: 1311
  author: peter
  author_email: phicks@senet.com.au
  author_url: ''
  date: '2005-11-15 11:43:52 -0600'
  date_gmt: '2005-11-15 11:43:52 -0600'
  content: <p>what is it you do again? somthin to do with computers, right?</p>
---
<img src="/images/hp-server.jpg" width="200" height="270" class="lede" alt="HP Server Pic"/>[File this one under "long and rather mundane tales of systems administration posted here for therapeautic purposes only".]

For a while now the main server at Chez Girtby has been an increasingly overworked HP Kayak. A nice machine, but very long in the tooth, with its Pentium 2 running at 333MHz. Fortunately my friend Mark had just the thing to replace it: another HP server, this time a [TC2100](http://h18004.www1.hp.com/products/servers/tc2100/) with a Pentium III 1.26 GHz (pictured). Just the thing.

The new server started off a bit shakily, being able to boot from neither its CD-ROM nor its 18GB SCSI hard disk. Fortunately I was able to revive each of these simply by re-seating the cables and interface board. Also it had a dying case fan, easily replaced. After a bit of playing, I got it up and running with the newly-released [FreeBSD 6.0](http://www.freebsd.org/releases/6.0R/announce.html). And after *that*, about 12 straight hours of building software to upgrade it to the latest Gnome (I should confess to violating the [upgrade instructions](http://www.freebsd.org/gnome/docs/faq212.html#q2) by *not* reading a good-sized book during this process - sleep beckoned).

So far so good. Migrating stuff from the old server has been going well: apache, samba, mysql, etc. Then it came time to get my printer working with the new server. One of the reasons for migrating was to get quicker printing thanks to faster postscript rendering.

I checked that the parallel port was enabled in the bios, and was being detected by the kernel. There were some tweaks required, but it looked OK. The `dmesg` output showed a parallel port, and the `/dev/lp0` device was being created correctly.

Now to install CUPS. `portinstall -sr cups` does the trick, and after a bit of configuration I start it up. Following the [documentation](http://www.cups.org/doc-1.1/sam.html#4_1), I check to see that that the available printer ports are detected using the `ipinfo -v` command. Then the problem strikes: the parallel port is missing from the list of available ports. Which makes it hard to install a printer.

So I reflexively applied the most obvious troubleshooting step: hit google with likely search terms.

There were a few hits but none of them looked very helpful. One person suggested that the printer would behave like this when it was out of ink (and mine wasn't). So I turned the logging up to maximum. I tried setting the parallel port to [polled mode](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/printing-intro-setup.html#PRINTING-PARALLEL-PORT-MODE) (which failed, and in retrospect this should have been a clue to the real problem). I had even started downloading the source code to see if I could see what was going on. Yes, really.

While doing this I thought that I wasn't going to get the printer working before a reasonable hour. So I decided to back out and re-attach the printer to the old server so that Wifey could do some printing in the morning. Peering back to the rats-nest of cables behind my desk  it then dawned on me that **I hadn't plugged the printer into the new server**. It was still attached to the old server. D'oh!

Plug it in, bingo, port detected, printer installed!

OK, so I know it was my fault really. But surely CUPS could have at least returned an error message, or some sort of indication that the port was there but it didn't have anything attached? After all, it managed to detect my serial port, even though nothing was attached to that. Hmmph.
