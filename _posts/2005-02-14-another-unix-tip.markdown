---
layout: post
status: publish
published: true
title: Another Unix Tip
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 71
wordpress_url: http://girtby.net/2008/09/04/another-unix-tip
date: 2005-02-14 12:10:15.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1048
  author: Alan Green
  author_email: alan.green@cardboard.nu
  author_url: http://cardboard.nu
  date: '2005-02-14 12:10:15 -0600'
  date_gmt: '2005-02-14 12:10:15 -0600'
  content: |-
    Hmmm... semicolons. Are you sure you don't want SLOCCount instead?

    http://www.dwheeler.com/sloccount/sloccount.html

    :)
- id: 1049
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2005-02-14 12:10:15 -0600'
  date_gmt: '2005-02-14 12:10:15 -0600'
  content: |-
    The example given was purely hypothetical and bears no resemblance to idiotic management requests for coding metrics, living or dead.

    You believe me, right? :)
- id: 1050
  author: Nevets
  author_email: ''
  author_url: ''
  date: '2005-02-14 12:10:15 -0600'
  date_gmt: '2005-02-14 12:10:15 -0600'
  content: <p>This works, I actually had a business requirement to count the instances
    of a '$' in  a file.  Go figure.</p>
---
How to count the instances of a given character in a file? `grep -c` won't do it - instead it counts the number of maching lines. You need:

>`cat foo.c | tr -c -d ';' | wc -c`

Which counts all the semicolons in `foo.c`. ([source](http://godot.studentenweb.org/site/myHowTos/applications/basic_unix_tools/))

Unix - it's the OS that won't cop out when there's text all about! ([source](http://en.wikiquote.org/wiki/Futurama#Professor_Hubert_J_Farnsworth))
