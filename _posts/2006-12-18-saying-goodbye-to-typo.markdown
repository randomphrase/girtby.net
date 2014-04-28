---
layout: post
status: publish
published: true
title: Saying Goodbye To Typo
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 226
wordpress_url: http://girtby.net/2007/02/22/saying-goodbye-to-typo
date: 2006-12-18 05:53:51.000000000 -06:00
categories:
- Nerd Factor X
- Meta
tags: []
comments:
- id: 1516
  author: Matt
  author_email: ''
  author_url: http://madbean.com/
  date: '2006-12-18 05:53:51 -0600'
  date_gmt: '2006-12-18 05:53:51 -0600'
  content: |-
    Have you considered changing hosting provider, to somewhere that will give you less grief per bogomip?

    IMHO you can't go past something like Linode http://www.linode.com/products/linodes.cfm US$20 a month isn't too bad.
- id: 1517
  author: marxy
  author_email: ''
  author_url: ''
  date: '2006-12-18 05:53:51 -0600'
  date_gmt: '2006-12-18 05:53:51 -0600'
  content: What do you think the root cause of this is? I guess you figure it's Typo
    as moving to another Ruby on Rails application might help.
- id: 1518
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-12-18 05:53:51 -0600'
  date_gmt: '2006-12-18 05:53:51 -0600'
  content: |-
    @Matt: Well, US$20/month is almost 3x what I'm paying now. That would make me seriously reconsider how much I'm willing to pay to keep blogging. Works out to about $3-4 per article that I have to pay. Just doesn't seem worth it in the long term.

    However it might be OK for the short term - just to avoid the time expense of migrating back to wordpress which will, I'm sure, involve PHP coding. Shudder. I'd definitely pay money to avoid that.

    @marxy: I would like to think the root cause is Typo, mainly because it's the easiest to fix. There have been some rumblings on the Typo list about performance optimisation, particularly with the number of database queries required for apparently simple operations. So I *hope* that Rails isn't fundamentally a resource hog.

    But the decision to move away from Typo is more based on it being the easiest thing to do at this point in time. I don't really have the time or inclination to do a detailed performance analysis on the current Typo installation and work out where the bottlenecks are.

    I'm also putting in place another short-term fix, namely to serve the static content (eg images) from apache rather than pass the requests through to [mongrel](http://mongrel.rubyforge.org/) (the RoR process). I'm sure this will please those folks who are currently enjoying their picture of [Homer's car](/articles/2006/02/03/aesthetics) at my expense.
- id: 1519
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-18 05:53:51 -0600'
  date_gmt: '2006-12-18 05:53:51 -0600'
  content: |-
    > another short-term fix, namely to serve the static content (eg images) from apache rather than pass the requests through to mongrel (the RoR process)

    Hmm, that’s not what’s known as a short-term fix, it’s more what’s known as a good common practice. Additionally I’d look into having Apache cache the content for requests proxied to the backend app. You seem to already be doing something like that, except:

        $ HEAD http://girtby.net/ | grep Cache
        X-Cache: MISS from girtby.net
- id: 1520
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-12-18 05:53:51 -0600'
  date_gmt: '2006-12-18 05:53:51 -0600'
  content: |-
    Yeah, another problem/limitation with Typo is that it doesn't support Last-Modified or ETag headers.

    Another possible cause of increased CPU usage, but not so easy to fix.
- id: 1521
  author: rick
  author_email: ''
  author_url: ''
  date: '2006-12-18 05:53:51 -0600'
  date_gmt: '2006-12-18 05:53:51 -0600'
  content: Look at simplelog if all you want is a basic blog...
---
Just a warning to say that service may be interrupted here on girtby.net over the next few weeks. In fact, outages are likely.

Unfortunately the underlying reason is [Typo](/articles/2006/07/25/girt-by-rails). Hence I have no choice but to migrate away from it.

My hosting provider has recently contacted me to say that my blog is again using up far too many resources on the shared server. CPU, RAM and database connection usage are all in excess of acceptable limits.

Recently I measured RAM usage at almost 128MB (!). It dropped to about 50MB after restarting, which seems to indicate some kind of memory leak. For now I've punted on this problem by restarting the blog engine every day using a cron task. As for the CPU and database connections, there are no quick fixes.

So I expect to soon migrate to [Mephisto](http://mephistoblog.com/), another Rails-based blogging engine. This may or may not be any gentler on my hosting provider's servers, but it *is* a fairly straightforward migration path from Typo. So I'm going to try it and see. It has other advantages over Typo in that it does seem to be under active development (with a working website even) and one of the developers is also on the Rails core team. Which is nice.

The last resort solution is to go back to Wordpress, and I'm not looking forward to that, mainly because there's no standard for [exported blog content](/articles/2006/08/14/towards-a-common-blog-export-format). Someone should do something about that.

In any case I'm travelling so it's unlikely that the migration will be complete before the plug gets pulled on the current site. Santa, can you bring me a new blogging engine for xmas?
