---
layout: post
status: publish
published: true
title: On Switching To Typo
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 204
wordpress_url: http://girtby.net/2007/08/08/on-switching-to-typo
date: 2006-08-12 01:55:47.000000000 -05:00
categories:
- Nerd Factor X
- Meta
tags: []
comments:
- id: 1461
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-08-12 01:55:47 -0500'
  date_gmt: '2006-08-12 01:55:47 -0500'
  content: I guess Matt just decided at some point that things would work the way
    he wanted them to, and that was that.
- id: 1462
  author: Lloyd Budd
  author_email: foolswisdom@gmail.com
  author_url: http://foolswisdom.com
  date: '2006-08-12 01:55:47 -0500'
  date_gmt: '2006-08-12 01:55:47 -0500'
  content: |-
    I had no interest in PHP, but having resolved that I must learn some PHP, I have acknowledged that every experience can teach me many things.

    Thank you for succinctly describing some of your WordPress gripes.
- id: 1463
  author: Stuart
  author_email: swforsyth@gmail.com
  author_url: http://thoughtmenagerie.wordpress.com
  date: '2006-08-12 01:55:47 -0500'
  date_gmt: '2006-08-12 01:55:47 -0500'
  content: |-
    I'd really like to migrate away from Wordpress to Typo.

    Two questions really, is there an 'easy' way of migrating my content and comments from wordpress.com and where is the best place to host the new blog?

    Some people suggest Textdrive

    Your help would be most appreciated.
---
So all the chaos with the Typo migration seems to have settled down. I've upgraded to the latest 4.0.2 release with all security patches applied. I've also fixed up some of the old RSS URLs, so hopefully the 10 Bloglines users who are currently seeing a red exclamation mark next to their girtby.net subscription will start to get some updates soon.

So now it's time to ask the question: why did I do this?

#### Learning Rails

The main justification for switching to Typo was to learn more about Ruby on Rails. This is a very interesting web framework which, from what I have seen so far, does seem worthy of at least some of the hype that surrounds it.

Typo is an excellent blogging engine, although still a bit immature. While it has all the features that I need, there is plenty of opportunity to expand. This is a good thing.

I want to start contributing more in the way of software to the world, and with a Rails-based blogging engine I get to learn more about Rails in the process. In the past I have been deliberately avoiding contributing to Wordpress because I had no interest in PHP.

Watch this space for some offerings to the Typo community, and the blogosphere at large.

#### Wordpress Gripes

Less important, but still worthy of mention, were some gripes that I had with Wordpress. Don't get me wrong, I still regard Wordpress very highly, and it's probably still my default recommendation to people. Nevertheless, the following shortcomings in Wordpress were persistently annoying, enough to make me jump ship:

 * Overly-agressive enclosures. Link to an MP3 on someone else's site and it *becomes an enclosure* in your feed. This is <acronym title="Broken As Designed">BAD</acronym>, and it will apparently [not be fixed](http://wordpress.org/support/topic/26311?replies=28#post-220571).
 * No comment preview! OK, it's available as a plugin, but this really should built-in.
 * No Atom 1.0 support. Hello!? Atom was standardised *almost 9 months ago*.
 * No per-post formatting. Not a huge problem I suppose, but kind of annoying if you try a new markup language and then [decide you don't like it](http://www.somethinkodd.com/oddthinking/2005/11/21/markdown-is-dead-long-live-markdown/).
 * A wierd post "summary" feature. Basically it takes the first few sentances of your post, rips out the markup and uses this in various places (archive pages, RSS feeds). I never could understand why it did this, and how to disable it permanently, everywhere.

There are some other minor things, but those are the main problems I see.
