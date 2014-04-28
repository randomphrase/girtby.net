---
layout: post
status: publish
published: true
title: 'New Offering: ktrace parser'
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 119
wordpress_url: http://girtby.net/2008/09/23/new-offering-ktrace-parser
date: 2005-07-17 10:59:05.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments: []
---
I just posted another girtby.net [offering](/offerings), namely a [ktrace parser](/offerings/ktrace-parser).

Those skilled in the art will know that `ktrace` is a BSD utility for logging each system call made by an application. I have been investigating ways of tracking which files are touched during a software build, and this script is the first output of this investigation.

The idea is that you use `ktrace` to generate a file containing the raw data of system call information. Then use my script to parse this file (which, in the interest of full disclosure, is actually using `kdump` behind the scenes) and produce a list of all the files and directories that were used in successful system calls. The script can also produce a process tree which you can use to zoom in on the files used by specific processes.

The advantage of this script over a regular `kdump` output is that because it reconstructs the process tree it can also track the current working directory per process and hence resolve relative pathnames. If you just grep the `kdump` output you may see things like "`../../..`" and have no idea what directory that resolves to.

The script is written in python and is a still a bit rough around the edges, as can be seen in lines such as this:

	print "    %s(): %s" % (func, ",".join(map(repr, self.namei[n][func])))

If you post it to the [daily WTF](http://thedailywtf.com/), I'll understand.
