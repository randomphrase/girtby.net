---
layout: post
status: publish
published: true
title: Podcasting
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  As much as I love listening to my entire music collection on shuffle play, what really makes the commute to/from work go really quickly is spoken word. I'm not always driving when [AM](http://www.abc.net.au/rn/talks/am/default.htm) or [PM](http://www.abc.net.au/rn/talks/pm/default.htm) is on, so I turn to the iPod. Audiobooks, and lately [podcasts](http://en.wikipedia.org/wiki/Podcasting) as well.

  Herewith some thoughts on podcasting, which app to use, what feeds to get, and *free software* for those patient enough to read to the end. [**Update:** The Import MP3s Applescript has moved to it's [own page](/offerings/import-linked-mp3s) ]


wordpress_id: 77
wordpress_url: http://girtby.net/2007/02/20/podcasting
date: 2005-03-03 21:39:40.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1063
  author: Garth T Kidd
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: |-
    NetNewsWire is a fantastic RSS aggregator. Can't fault that. And you're right; our install is huge. wxWindows is no small beastie. OTOH, our new version is way slick. Worth a shot. :)

    Recommended podcasts (all URLs are feeds):

    30 years of jjj: http://www.abc.net.au/triplej/30years/podcast/triplej30years.xml

    jjj's Hack: http://www.abc.net.au/triplej/hack/podcast/podcast.xml

    Benjamen Walker's Theory of Everything: http://www.toeradio.org/index.xml

    Radio Clash (UK mashup show): http://www.mutantpop.net/radioclash/rssfeed.php

    Reel Reviews (the guy's a real film nut!): http://mwgblog.com/wp-rss2.php

    Slashdot Review: http://slashdotreview.com/wp-rss2.php
- id: 1064
  author: spuddybuddy
  author_email: spuddybuddy@ubertuber.org
  author_url: http://ubertuber.org
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: |-
    fyi,

    if the playlist you are importing into doesn't exist first, the script will throw an error - so be sure to create a "Music Blogs" playlist first, or edit the script to use a playlist that already exists.

    nice script btw.  i was thinking of writing something to covert the mp3 links to enclosures, but this works just as well.
- id: 1065
  author: MikeJ
  author_email: moj@ecs.soton.ac.uk
  author_url: http://www.mikesroom.org
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: Lime 6 is now podcasted :)
- id: 1066
  author: Nicholas
  author_email: nicholas@acetylene.net
  author_url: http://www.acetylene.net/
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: |-
    Nice! Along the same lines, I've written a script that will delete podcasts after you've listened to them. It also allows you to use ratings to mark podcasts to be deleted or kept regardless of whether or not you've listened to them yet. You can find more details and download the script here:

    http://www.acetylene.net/archives/2005/03/14/managing-podcasts-with-applescript/

    It will work with your script if you set the playlist to "Podcasts" -- I wrote it to be used with NetNewsWire 2.0 Beta, which puts podcasts in that playlist by default.
- id: 1067
  author: Roo
  author_email: roo.reynolds@gmail.com
  author_url: ''
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: Very impressed with your script. If you're looking for ideas for future
    development, one thing I've noticed is that it doesn't fail gracefully if any
    of the mp3 links are stale (a single 404 is all it takes to end the whole party).
- id: 1068
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: |-
    Thanks Roo, I'll see what can be done about that.

    Personally I have more problems with Applescript timeouts caused by slow downloads...
- id: 1069
  author: Roo
  author_email: roo.reynolds@gmail.com
  author_url: ''
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: |-
    Thanks Alastair. Yep. I'd say addressing those two issues (404s and timeouts) would make it a very usable little script indeed.

    Is it true that iCal has hooks to run scripts at specified (recurring) times? I'm imgaining a fully automated system which grabs any previsouly unseen mp3s linked from your favourite blog each morning, just ready for the commute to work. That would be powerfully cool, don't you think?
- id: 1070
  author: Alek
  author_email: girtbyblg@x-s.net
  author_url: http://www.alekhayes.com
  date: '2005-03-03 21:39:40 -0600'
  date_gmt: '2005-03-03 21:39:40 -0600'
  content: yes, ipodder is clunky but theres just so little out there at the moment.
    anyone got a fuller list of apps that can be tried or is that it?
---
As much as I love listening to my entire music collection on shuffle play, what really makes the commute to/from work go really quickly is spoken word. I'm not always driving when [AM](http://www.abc.net.au/rn/talks/am/default.htm) or [PM](http://www.abc.net.au/rn/talks/pm/default.htm) is on, so I turn to the iPod. Audiobooks, and lately [podcasts](http://en.wikipedia.org/wiki/Podcasting) as well.

Herewith some thoughts on podcasting, which app to use, what feeds to get, and *free software* for those patient enough to read to the end. [**Update:** The Import MP3s Applescript has moved to it's [own page](/offerings/import-linked-mp3s) ]


<a id="more"></a><a id="more-77"></a>


### What App?

Of course being web-based, [bloglines](http://bloglines.com) is not suitable for podcasting. You need to run the app locally so that it can insert the podcast into your iTunes library (or wherever). I tried out a couple of podcasting apps before settling on one I like.

[iPodder](http://ipodder.sourceforge.net) was the first one I tried, but moved on to others because the UI was a pretty clunky and non MacOS-like (sorry Garth). Also, 34.6MB ... !?

[iPodderX](http://ipodderx.com/) is a Cocoa native app, but it also has a very clunky UI. It doesn't appear in Expos&eacute;, for one thing. It has some nice features and works well, but is not significantly better than iPodderNoX to justify the US$20.

However [NetNewsWire](http://ranchero.com/netnewswire/) certainly is worth the $20 (or $25 if not bundled with the MarsEdit blog editor, insert perpetual promise to review it here). Not only is it a superb general-purpose RSS reader with a very elegant Cocoa interface, it also handles podcasts quite nicely. These are downloaded automatically, imported to iTunes and then trashed. The only advantages that I can see of iPodderX is that it will allow you to set per-feed Genre and Playlist, but this is not a big deal.

The latest betas of NetNewsWire support synchronising with bloglines (something that the NNW author himself [confirmed in a comment to this very blog](/archives/2005/01/12/gooey-or-webby-or-both/#comment-217)!) which is also a very compelling feature and probably deserves more attention than I'm going to give here...

### What Feeds?

So having picked the right software I've been slowly exploring the medium to see what's around. As you might expect, there's a lot of amateur productions in there, and the main topic of conversation is podcasting itself. A microcosm of the internet, really. And like the internet, the value is in the [long tail](http://en.wikipedia.org/wiki/Long_Tail). You have to do a bit of searching.

Here are some feeds I like so far:

- [Lime](http://lime.mikesroom.org), an excellent radio show from the UK. Some quality downtempo music with amusing vintage ads interspersed. Mike, if you're listening, isn't it about time for another show? [Feed](http://lime.mikesroom.org/lime.xml)
- [engadget.com](http://www.engadget.com/). Gadget blog, witty comments. Also been quiet for a while. [Feed](http://www.engadget.com/common/videos/pt/rss.xml)
- [2600](http://www.2600.com/) replays some of Emmanuel Goldstein's NYC radio shows "Off the hook" and "Off the wall" in podcast format. Security, hacking, privacy, rights. [Feed](http://www.2600.com/rss.xml)
- [augasm](http://aurgasm.us) and [scissorkick](http://scissorkick.com) both deliver fantastic, new, and diverse music onto my iPod on a regular basis. There's probably lots more great feeds on their blogrolls.

### Podcast or Blog? Or Both?

In the case of augasm and scissorkick, these are actually regular blogs where each post highlights a particular artist or album and generally include a track or two in MP3 format. Podcasts feeds (that is, RSS with the MP3 files included as enclosures) are available, but I tend not to like these because you get *just* the audio, and not the accompanying text. So you get a feed of random MP3s onto your iPod, but you have no idea about where they're coming from or any kind of background material.

Of course downloading linked MP3s from a blog post and importing them into iTunes is a manual process just begging for automation. So here it is, the first AppleScript I've written in maybe 7 years (?).

**Update:** The script has moved to it's [own page](/offerings/import-linked-mp3s), now with detailed instructions and other stuff, enjoy.

By the way I see that Nick Matsakis has approached the problem from another direction. His PodcastBuddy script synchronises the textual blog content with notes on the iPod. If it's not on his [home page](http://mit.edu/matsakis/software) now, it will be shortly.
