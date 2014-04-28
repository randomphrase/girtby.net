---
layout: post
status: publish
published: true
title: Virtual MacOS X?
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 217
wordpress_url: http://girtby.net/2007/03/07/virtual-macos-x
date: 2006-10-30 06:44:06.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1488
  author: Chris
  author_email: ''
  author_url: http://brainsnorkel.com
  date: '2006-10-30 06:44:06 -0600'
  date_gmt: '2006-10-30 06:44:06 -0600'
  content: I think Apple are looking into the whole world of virtualization and what
    being on Intel hardware can help when you're looking to increase the market share
    of your equipment and operating system.  Tonio points to the long history of Apple
    wanting to <a href="http://tonioloewald.blogspot.com/2006/07/running-windows-apps-on-mac-and-c.html">make
    Windows apps "just work" on MasOS</a> and perpetuates <a href="http://tonioloewald.blogspot.com/2006/09/of-course-its-just-rumor-ive-not-been.html">a
    rumour</a> about the approach Apple may be taking.
- id: 1489
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-10-30 06:44:06 -0600'
  date_gmt: '2006-10-30 06:44:06 -0600'
  content: |-
    In related news, it seems that [VMWare Fusion for MacOS X](http://www.tuaw.com/2006/11/03/vmwares-fusion-begins-private-beta/) has been released to private beta. It...

    > will enable Intel-based Macs to run x86 operating systems, such as Windows, Linux, NetWare and Solaris, in virtual machines at the same time as Mac OS X

    Which operating system missing from that list?
---
And now, a bit of industry punditry if you'll indulge me.

[Virtualization](http://www.virtualizationdaily.com/) is my new favourite shiny thing. I'm becoming more and more interested in the potential for virtual servers and virtual network infrastructure and virtual storage and whatever else. I'm convinced it will change the way that computers are used, first on the server and eventually on the desktop. And then: virtual virtual machines. Mark my words.

Microsoft has taken a lot of heat lately for a rather [regressive attitude to virtualization](http://weblog.infoworld.com/virtualization/archives/2006/10/the_truth_about.html) in Windows Vista. Whatever the outcome when the product is released, you have to admit that they haven't done themselves any public relations favours in the meantime. Confusion reigns.

On the other hand, the iron curtain around Cupertino seems to be working for Apple. No one that I've seen is even asking the question as to whether the next MacOS X will run on virtual hardware. There has been some [speculation](http://arstechnica.com/staff/fatbits.ars/2005/12/4/1990) about the use of a new virtual-machine based runtime, but I haven't seen any speculation about Apple supporting MacOS X as a guest operating system in virtual hardware.

I have no idea if they will or wont. But it makes a lot of sense:

 * Pre-packaged virtual appliances containing MacOS X would be a great way of promoting the operating system. Presumably this would lead to physical hardware sales once people reach the limits of the virtual hardware.
 * The MacOS X operating system is already built upon a microkernel architecture which may provide a basis for a virtualization layer. OK if I knew anything about microkernels or virtual machines I could substantiate this. But at the level of a dillettente it makes sense.
 * MacOS Users are predisposed to the idea of virtualization. The original VirtualPC was a Mac-only product, used for running Intel software (ie Windows) on PowerPC hardware. Parallels is the modern-day equivalent, and it is very common on Intel Macs.

I guess we'll have to wait until Leopard appears. But in the meantime I hope Apple are looking at some of the criticism that is being leveled against Microsoft and taking notes. Windows users are coming to *expect* operating systems to be installed in a virtual machine (with appropriate licensing). I suspect MacOS users are going to give Apple a bit of a break (what with the whole Intel shift) but in the next release of the OS will have just as high  expectations for virtualization.
