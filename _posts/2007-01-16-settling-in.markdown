---
layout: post
status: publish
published: true
title: Settling In
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 963
wordpress_url: http://girtby.net/2007/03/31/settling-in
date: 2007-01-16 12:30:52.000000000 -06:00
categories:
- Nerd Factor X
- Meta
tags: []
comments:
- id: 1539
  author: Richard
  author_email: rjatkins@optusnet.com.au
  author_url: ''
  date: '2007-01-16 12:30:52 -0600'
  date_gmt: '2007-01-16 12:30:52 -0600'
  content: |-
    FYI, the comments feed is still a little borked: links to comments take me to the articles proper, not the new comments themselves.

    Be aware that svk and base svn clients don't play nice. You have to switch all your systems over (tortoise, cmd line, subclipse, whatever emacs doohickey you're using, etc. plus the server), especially if you're going to be making changes with all the clients you use... Otherwise, corruption of merge state is the likely outcome.
- id: 1540
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-01-16 12:30:52 -0600'
  date_gmt: '2007-01-16 12:30:52 -0600'
  content: |-
    > links to comments take me to the articles proper, not the new comments themselves

    Ok that should be fixed. I say *shoud* because it *is* fixed on my local Mephisto install, and the fix has been uploaded to the production server, and the server has been restarted. So like I say it *should* be fixed.

    Probably some weird Rails production-only caching magic at work. With luck it will fix itself with this comment.
---
If you're reading this in a feed aggregator, click on through to enjoy the beautiful *new theme* that I have spent hours slaving over.

OK it's the same as the old theme, but don't let that stop you from having a look. The new theme means that I am finally settling into my new digs, namely the Mephisto blogging engine.

As regular readers will know, late last year I needed to [migrate away from Typo](/articles/2006/12/18/saying-goodbye-to-typo), and Mephisto seemed to require the least effort. The migration was (relatively) seamless, and the new platform is a pleasant surprise. It's better than Typo in many ways, having:

 * a powerful model of page and article structure that resembles a lightweight CMS;
 * themes based on the [liquid](http://home.leetsoft.com/liquid) template engine and are easy to install and manage;
 * AJAXy comment moderation;
 * *much* more active development (and one of the main developers is also a rails committer);
 * much less resource usage (with a thumbs-up from my hosting provider); and
 * plugins (not as easy to use as wordpress, but plugins nonetheless).

Notwithstanding this there are still some niggling problems, the most visible of which is an intermittent fault which causes a generic Mephisto error "Status: 500 Internal Server Error".  If you see this, please be aware that I know about it and am monitoring it. If you get it while trying to post a comment (sigh), just email me.

In slightly tangential news, I'm exploring the use of [SVK](http://svk.elixus.org/view/HomePage) to manage the Mephisto codebase and my changes. So far it looks pretty powerful, and I will report back after further investigation.

One more thing: I'm at [linux.conf.au](http://lca2007.linux.org.au/) this week. If you are too, let's meet.
