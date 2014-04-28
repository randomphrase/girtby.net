---
layout: post
status: publish
published: true
title: Building An Alien
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 2910
wordpress_url: http://girtby.net/2008/05/04/building-an-alien
date: 2008-05-04 10:31:00.000000000 -05:00
categories:
- Nerd Factor X
tags:
- electronics
- kit
- dac
comments:
- id: 1687
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://marxy.org
  date: '2008-05-04 10:31:00 -0500'
  date_gmt: '2008-05-04 10:31:00 -0500'
  content: |-
    I've done some listening to mine tonight and I agree it's very good, as long as you don't turn it up to loud. The bass starts clipping at only moderate levels.

    Having just 5V from the USB to play with is probably the limiting factor. Might be worth changing over to a battery supply. It does work well with the external amplifier so sharing the supply from that might be the go.
- id: 1688
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2008-05-04 10:31:00 -0500'
  date_gmt: '2008-05-04 10:31:00 -0500'
  content: |-
    That's interesting - I'm not seeing any clipping. I had it turned up to maximum in Sound Preferences. This was going into the analogue input of the Corda Move.

    For my next project I thought I might try a [PIMETA](http://tangentsoft.net/audio/pimeta/).
---
This weekend, [Peter](http://marxy.org/) and I built this:

[flickr]photo:2464195172[/flickr]

It's an [Alien DAC](http://www.myexposition.com/diy/usbdac/overview.html); a USB to analogue audio converter that has a Burr-Brown PCM2702 chip at its heart.

I've been listening to it a bit today and am very impressed with the quality. In fact, to my ears it sounds even better than the DAC built into my [Corda Move](/archives/2007/8/29/strapping-a-motorcycle-to-your-head) amplifier. Upon plugging it in I immediately noticed some musical details in the treble that I hadn't noticed before. Of course, I haven't [double-blinded](/archives/2007/9/20/getting-double-blind) myself, so maybe I'm imagining it. Regardless, the Alien is certainly hard to fault. And from only $50 of parts.

I got the parts as a kit from [Glass Jar Audio](http://www.glassjaraudio.com/main.sc); recommended. I hate to think what a painstaking job it would be to collect so many parts from various suppliers for these type of kits.

Construction credit goes to Peter; I mostly just watched and made light conversation, with the exception of capacitor C16, with is **mine dammit**!

The surface-mount components are *very* difficult to solder. My hands just shake too much! (Got to cut down on the coffee apparently) With the pins on the PCM2702 itself, Peter had to solder them all together in one big blob and then soak up the excess solder using a wick. The increasing use of surface-mount components is apparently causing a bit of controversy in the homebrew-electronics community.

I must disclose that it didn't quite work first time, but we found the problems by a fairly simple process of following the circuit diagram and checking the voltage with a multimeter at key points along the way (we didn't get to C16 thankfully). In the end the problems were relatively simple cases of short-circuiting and easily fixed. I'm pretty certain this technique goes a long way in electronic kit troubleshooting.

It was great to watch someone who knows what they are doing, and I am inspired to build some more electronic components myself (though perhaps not surface-mount).
