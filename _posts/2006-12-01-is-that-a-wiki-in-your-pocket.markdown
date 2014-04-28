---
layout: post
status: publish
published: true
title: Is That a Wiki In Your Pocket?
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 221
wordpress_url: http://girtby.net/2008/09/23/is-that-a-wiki-in-your-pocket
date: 2006-12-01 18:35:00.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments: []
---
I am a big fan of the personal Wiki. This is a little web-based application which you would typically use to store information relevant to you. Notes, to-dos, lists, embryonic blog articles, anything.

It's not the fact that it's a wiki, it's just that its ubiquitous (while I'm online), easy to edit and doesn't require any maintenance, that makes it so appealing and useful.

Some people have personal note taking applications that live on their computers. But I just use far too many different machines on a regular basis for this to be practical. So, like the rest of my life it seems, the wiki has to live on the net. I have an instance of [Instiki](http://instiki.org) which lives on my home server and is accessible from the internet. There's nothing on there which is super sekrit, so I just use simple digest-based HTTP authentication which seems to be plenty.

Sometimes I need to get information from the wiki when I'm not at a computer. With the availability of the [mobile internet](/articles/2006/07/02/the-phoney-internet) this is becoming relatively infrequent, but still occasionally annoying.

Reading [Erica Sadun's article](http://www.macdevcenter.com/pub/a/mac/2006/11/28/building-interactive-ipod-experiences.html) on MacDevCenter I found out that the iPod has a notes feature which includes some fairly rudimentary markup - enough for a wiki anyway! So the idea was formed: a simple script to download the pages from a personal wiki, then convert them to the simple markup used by the iPod notes, and stash them on the iPod.

Et voila:

[flickr]photo:311497459[/flickr]

Although it is tailored for the export format of Instiki, it should be relatively easily to adapt this script to other wiki engines (your wiki [does have](/articles/2006/08/14/towards-a-common-blog-export-format) an export function, right?). Strictly speaking it doesn't need a wiki at all: any website that exports as a ZIPped archive of HTML files should work.

[Enjoy!](/offerings/wikipod)
