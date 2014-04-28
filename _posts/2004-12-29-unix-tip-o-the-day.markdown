---
layout: post
status: publish
published: true
title: UNIX tip o' the day
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 55
wordpress_url: http://girtby.net/2008/09/23/unix-tip-o-the-day
date: 2004-12-29 16:39:00.000000000 -06:00
categories:
- Nerd Factor X
tags:
- unix
- tips
- chmod
comments:
- id: 1006
  author: Garth
  author_email: garth@deadlybloodyserious.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2004-12-29 16:39:00 -0600'
  date_gmt: '2004-12-29 16:39:00 -0600'
  content: Oh, man, I was only doing that this morning. :|
- id: 1007
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2004-12-29 16:39:00 -0600'
  date_gmt: '2004-12-29 16:39:00 -0600'
  content: And the gnu tools keep adding really useful command line switches, two
    I noticed recently are the grep -r which searches recursively and tar -j that
    uncompresses bzip2 files.
---
I never knew that the `+X` mode for `chmod` meant set the execute bit only if a directory or if the execute bit is already set on a file.

Up until now I had been using a wierd combo of <code>chmod -R [whatever]</em></code> followed by `find . -type d | xargs chmod +x` to reset permissions on a directory hierarchy. Now I will just use `chmod -R +X`.

This will save me literally <em>seconds</em> of typing!
