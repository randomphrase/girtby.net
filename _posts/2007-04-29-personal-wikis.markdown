---
layout: post
status: publish
published: true
title: Personal Wikis
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Do you have a `todo.txt` file? Are you like most [alpha geeks](http://www.craphound.com/lifehacksetcon04.txt)?

  I used to have one. In fact I had lots of them. One for each machine I used regularly.

wordpress_id: 1742
wordpress_url: http://girtby.net/2007/04/30/personal-wikis
date: 2007-04-29 00:16:00.000000000 -05:00
categories:
- Nerd Factor X
- Linkpimpin'
- Personal
tags: []
comments:
- id: 1586
  author: Garth Kidd
  author_email: garth@deadlybloodyserious.com
  author_url: http://www.deadlybloodyserious.com
  date: '2007-04-29 00:16:00 -0500'
  date_gmt: '2007-04-29 00:16:00 -0500'
  content: 'You can drive Stikkit from QuickSilver for extra keyboard-obsessive geek
    points: http://www.43folders.com/2007/04/11/quicksilver-stikkit/'
- id: 1587
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-04-29 00:16:00 -0500'
  date_gmt: '2007-04-29 00:16:00 -0500'
  content: |-
    > You can drive Stikkit from QuickSilver

    That would be great if I knew what Stikkit was. Last time I tried to look it was blocked by a stupid corporate firewall.

    Perhaps you are confusing Stikkit with Stikipad? (And I wouldn't blame you)
- id: 1588
  author: JDG
  author_email: jonathan@jdg.net
  author_url: http://stikipad.com
  date: '2007-04-29 00:16:00 -0500'
  date_gmt: '2007-04-29 00:16:00 -0500'
  content: Thanks for the review!  We're always looking for new ways to improve our
    service, so if you have any ideas don't hesitate to send them over.
- id: 1589
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-04-29 00:16:00 -0500'
  date_gmt: '2007-04-29 00:16:00 -0500'
  content: I probably should have looked this up before posting, but it turns out
    that [todotxt.com](http://todotxt.com/) actually exists and has lots of great
    tips for managing todo.txt files, courtesy [Gina Trapani](http://ginatrapani.org/).
    No word on how to easily store them online though.
---
Do you have a `todo.txt` file? Are you like most [alpha geeks](http://www.craphound.com/lifehacksetcon04.txt)?

I used to have one. In fact I had lots of them. One for each machine I used regularly.

<a id="more"></a><a id="more-1742"></a>

#### Wanted: `todo.txt.com`

Text files are great, but also a real pain because they proliferate. Those of us who use many different computers regularly either spend lots of time syncronising their `todo.txt` files, or (more likely) we use our brains as a backup repository for the times when that crucial piece of information is on the *other* computer.

<div class="aside"><p>I have the same problem with my <a href="/articles/2007/2/18/my-password-safety-technique-is-unbreakable">passwords file</a>, but it is not as severe because the information in there doesn't change quite as often.</p></div>

Some time ago I came to the realisation that my working set needs to live online. Everything except passwords, of course. That's when I started using a personal wiki.

Strictly speaking I don't really need a wiki to organise my life; after all, it generally fits into a single `.txt` file. However when I started to look into this, the wiki was the closest match to what I wanted. Google Notepad and similar weren't yet invented. And after using a wiki for a while, I got used to it.

#### WHYTO: Wiki

You may be wondering what sort of content a personal wiki is useful for. Well the [Backpack site](http://www.backpackit.com/examples) has lots of examples of the types of notes you might want to make with a personal wiki (even though Backpack isn't really a wiki, more on that later). In general you could take just about all of those loose `.txt` files that are rattling around in your home directory and stick them in a wiki.

I use my wiki for things like:

 * Coding snippets. One-liners or shell script commands that I don't want to trust to my `.bash_history`
 * Quotes. Any quotable quotes get copy'n'pasted into the wiki.
 * Blog ideas. Yes I have a big page of these. Sometimes just a bullet point, sometimes more. When it gets too big I can often copy'n'paste it into MarsEdit and it can become a draft blog post *without further editing* thanks to the magic of [Markdown](http://daringfireball.net/projects/markdown/)!
 * Forum posts & blog comments. So damn hard to keep track of what I've said where. When posting on someone's blog, I try to remember to store the URL for my comment on my wiki.
 * Cheat Sheets. Packaging systems are my particular bugbear, I can never remember the differences between apt-get, rpm, rubygems, darwinports, etc etc.
 * Shopping lists. Things to get at the hardware store, movies to rent, music to buy.
 * eBay Queue. As I discover things around the house that could be sold on eBay I add them to the queue, which is periodically emptied in one big afternoon of eBay servitude.
 * Big purchasing decisions. When we were buying a house I kept a wiki page on the current candidates; just a picture, short description and open inspection times for each. Each weekend I'd print it out, and plan the day's inspections.

#### WHYNOTTO: Self-Hosting

For my first foray into the world of personal wikis, I installed [PHPwiki](http://phpwiki.sourceforge.net/) on my home server. This worked OK, although I found the markup language frustratingly different to the others that I use regularly (eg Markdown here on the blog). That, and the desire to play with Rails, led me to [Instiki](http://instiki.org/), which I have been using until recently.

The main problems I had experienced were due to the use of my home server as a host. This proved to be a problem because connectivity is far less reliable than a proper hosted service. Either the ADSL connection would drop or (more likely) the DNS entry wouldn't be updated correctly. Or the home server would be powered down. Or in the middle of a software upgrade. Or something. Maintaining your own server is a mug's game, particularly if you want to depend on it.

Then I went looking for hosted alternatives. I wanted a site oriented towards users with similar needs to mine, and was willing to pay about $5/month for it to be professionally maintained. And after that, the only other features I absolutely needed are [data export](/articles/2006/8/14/towards-a-common-blog-export-format) and privacy.

#### Backpack

I initially looked at [Backpack](http://backpackit.com/), as it seemed ideal for my needs. In addition to supporting freeform wiki content, such as I have been generating up until now, it also supports to-do lists, images, and other types of content. And it certainly *is* nicely implemented with all sorts of Ajaxy goodness. However, after a short evaluation I decided it wasn't right for me. The problems that I saw were:

 * The $5/month fee is reasonable, but the 25 page limit is ridiculously low. Maybe it's just the way that I like to organise things, but I much prefer to "spread out" information across multiple pages and 25 is nowhere near enough. The next plan up is $9/month, and provides 100 pages, but that is starting to get expensive.
 * Backpack does not support Markdown, the markup language that I have internalised. It does support Textile, but I'm not sure I want to change.
 * Unlike a wiki, Backpack does not support page history. One of the nice things about a wiki is that it has automatic version control, meaning that you can trim old data from your site without worrying about ever getting it back. The same cannot be said for Backpack.

#### Stikipad

After a bit of casting about I came across [Stikipad](http://www.stikipad.com/). It seems that this is simply a hosted instance of Instiki, with some custom add-ons. In short, it suits my needs perfectly.

 * Stikipad supports Markdown, so I could transfer all my current content across without any problems.
 * It supports an *unlimited* number of pages with the *FREE* account. This is quite the bargain. I may well end up upgrading to a paid plan, but the free one is actually fine for now.
 * In addition to wiki content it does support to-do lists. However these seem a bit of a tacked-on afterthought. They aren't included in the exported data, for example.

Anyway so I'm pretty happy with it for now. To be fair there have been a few short-term outages, but nothing that isn't cured by a refresh.

#### Ubiquitous Access

One of the main reasons for getting my important information online is to allow me to access it from anywhere. Obviously this is still dependent on the availability of a browser and internet connection. And these days I [carry both in my pocket](/articles/2006/7/2/the-phoney-internet).

Visiting the video store I can instantly look up that movie recommendation that you emailed me several months ago and I had promptly forgotten. Just whip out the phone, dial up the browser, et voila.

As a backup I also keep a copy of my [wiki on my iPod](/articles/2006/12/1/is-that-a-wiki-in-your-pocket). I'm happy to announce that the [wikipod script](/offerings/wikipod) has been updated to work with stikipad's form-based authentication.

So in summary: get a stikipad account, get access to it from your phone, and get organised!
