---
layout: post
status: publish
published: true
title: Easing into Ubuntu
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 224
wordpress_url: http://girtby.net/2008/10/20/easing-into-ubuntu
date: 2006-12-17 04:50:07.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1512
  author: Sunny Kalsi
  author_email: ''
  author_url: ''
  date: '2006-12-17 04:50:07 -0600'
  date_gmt: '2006-12-17 04:50:07 -0600'
  content: exactky why is it a bad idea to put web content in /var? and if not /var,
    then where?
- id: 1513
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-12-17 04:50:07 -0600'
  date_gmt: '2006-12-17 04:50:07 -0600'
  content: |-
    `/var` is for "multi-purpose log, temporary, transient, and spool files", at least according to `man hier` on FreeBSD, which is where I get my expectations. This [FHS](http://www.pathname.com/fhs/pub/fhs-2.3.html#THEVARHIERARCHY) agrees:

    > `/var` contains variable data files. This includes spool directories and files, administrative and logging data, and transient and temporary files.

    Admittedly there is stuff in there which doesn't meet that description, like crontabs, but for the most part it's pretty accurate.

    In my mind `/var` is somewhere where the most frequently-changed stuff goes, and often deserves a completely different type of filesystem. For example, on my OpenWRT box, `/var` is stored in RAM to avoid excessive write cycles on the flash storage.

    I would say `/usr/www` or `/usr/local/www` is the place for web content.
---
Here are some short notes on the Ubuntu experience, plus a revelation about virtualization.

First, Ubuntu. After the [initial teething troubles](/articles/2006/12/07/the-switch) it has been going pretty well. I'm getting used to some of the filesystem quirks (sorry but web content should *not* go in `/var`, dammit!).

Also the package management is good but a little disappointing. Bear in mind that I'm coming from FreeBSD where it is *very* rare to compile third-party software from a tarball. On Ubuntu I've had to do it several times now (eg Subversion 1.4, Ruby Gems).

On the plus side the forums are fantastic so there's almost always help available.

So migrating my applications from the old FreeBSD server to the new Ubuntu server has been slow going. But I'm getting there. For the duration I've been running with both servers powered up, and as I start up an application on the new server, I shut it down on the old.

Recently though I had a revelation. Instead of keeping the FreeBSD server powered up all the time, why don't I just make it a *virtual* server running within Ubuntu? In contemplating the physical-to-virtual migration it also struck me: **virtual machines are a great way to test your backups**.

We all do backups, but how often are we likely to test them in an all-out completely from scratch re-install? Hardly ever, because you generally can't spare the hardware. Now, it's easy!

So as we speak I'm going through Mark Hannon's excellent [HOWTO](http://lists.freebsd.org/pipermail/freebsd-doc/2005-May/007913.html) restore a FreeBSD system using the fixit CD, with a couple of tweaks for the virtual environment. Getting the backup files into the virtual system is a problem because within the fixit environment there is no access to networking (or at least nothing easy that I could see). So instead I made an iso image containing my backup files using `mkisofs`, and mounted that on the second CD-ROM drive of the virtual machine. Easy.

I plan to get this new virtual server up, switch over the DNS CNAME entries from the old server to the new, and power down the old FreeBSD server for good (or until eBayed to raise funds for the imminent RAM purchase that is now required by running a virtual machine).
