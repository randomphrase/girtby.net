---
layout: post
status: publish
published: true
title: Sharing With Yourself
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 70
wordpress_url: http://girtby.net/2008/09/04/sharing-with-yourself
date: 2005-02-14 10:25:59.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments: []
---
Some months ago I had a [disk crash](/archives/2004/12/13/i-heart-unix/) which trashed the subversion repository I had been using to store stuff. Mainly stuff that I wanted to share with myself across the various machines that I use regularly.

So, whilst procrastinating about re-establishing the subversion repository, I've also come across a minor problem in using subversion for this sort of task. You see, since the drive failed, I've also switched ISPs, and the new ISP seems pretty fast and reliable but does block incoming connections on port 80. In order to keep using subversion I need to find a new server, change to some other port (81?), or use the ssh transport method. More procrastination looms.

So I've been looking at alternatives for the problem of synchronising a home directory full of favourite scripts, dot-files and other goodies across multiple machines.

[Unison](http://www.cis.upenn.edu/~bcpierce/unison/) is a very sophisticated tool for solving exactly this problem. Unfortunately it failed miserably on the first attempt I tried to use it - not a good omen. The error message was moderately amusing:

>`Warning: Archive format mismatch: found
>''Unison archive format 21
>but expected
> 'Unison archive format 21'.
>I will delete the old archive and start from scratch.`

Err. OK then. You do that. In the meantime I'll have a look at the pretty demos of [iFolder](http://www.ifolder.com/). No this isn't an Apple iLife iApp. It's a file sharing application (their description, really) that just happens to be occupying part of the i* namespace.

iFolder it looks a bit immature for me to be trusting my sacred home directory to just yet, but it's worth keeping an eye on. I would like to highly encourage the use of animated demos which show how the product is used. Given that there is no accompanying narration I'm not sure if these fully qualify as [screencasts](http://del.icio.us/judell/screencast) in the Jon Udell sense, but it's certainly a nice way of explaining how your application works.

So I'm back to where I started. svn+ssh seems like the best way to proceed here, but the main lesson to be learned here is that the sharing-files-with-yourself idea is quite vulnerable to changing connectivity arrangements. I guess the best thing to do is be flexible - if all else fails be willing to email tarballs around.
