---
layout: post
status: publish
published: true
title: Saying Hello to Mephisto
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 768
wordpress_url: http://girtby.net/2006/12/26/saying-hello-to-mephisto
date: 2006-12-26 08:16:00.000000000 -06:00
categories:
- Meta
tags: []
comments:
- id: 1522
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: |-
    You didn’t need to tell me – 15 duplicate new entries in both of your feeds tell the story themselves.

    Someone tell me why in near-2007 noone heeds Atom’s admonition to store IDs in the database along with items so that they won’t change across site moves and migrations.
- id: 1523
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: |-
    Aristotle, that's an excellent question.

    The preliminary answer seems to be that Mephisto generates its own IDs based on the date published, internal database ID, and the FQDN. At first blush I'd say Mephisto is broken, but that's another topic.

    As a result there is nowhere in the database for a stable article ID. Hence although Typo uses a GUID, this is not preserved when the article comes across to Mephisto.
- id: 1524
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: Hmf. I just got a third set of copies of your posts masquerading as new.
- id: 1525
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: 'PS.: sorry to be so grumpy. This is just a personal pet peeve, because
    it’s such a small detail for feed publishing software but has such a big effect
    on the feed consumer user experience. So when it works correctly it’s a good sign
    that the developers have done their homework… and unsurprisingly, most haven’t.'
- id: 1526
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: OK, now I no longer apologise for being grumpy. I just deleted <em>the
    <strong>7th</strong> set of fresh dupes</em>! Can you please <em>please</em> fix
    the damn thing? It’s getting to the point that I’d rather not have to keep cleaning
    up the mess anymore, even though I am very reluctant to unsubscribe.
- id: 1527
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: |-
    Aristotle,

    I honestly haven't got a clue why you are seeing so many dupes. I have deliberately not touched the live site config for days now. Also I am not seeing any dupes in my aggregator (NetNewsWire).

    However I've just noticed that the `<id>` of the main feed document includes the year, and hence would have just changed. Perhaps this would have caused the most recent round of dupes?

    (The obvious point that the year should probably not be included in the feed:id is well taken. I'll raise it with the Mephisto devs.)

    Doesn't explain the previous dupes you were getting though. I would imagine that at *worst* you would have two sets of dupes, one for the Mephisto conversion, and one for the new year.
- id: 1528
  author: Julian
  author_email: girtby@somethinkodd.com
  author_url: http://www.somethinkodd.com/oddthinking
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: |-
    <blockquote><em>Some older permalinks (specifically the /archives links) won’t work right now.</em></blockquote>

    I can confirm that! I was looking for your old "Don't use Wingdings" article, and Google is still pointing to broken links.
- id: 1529
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: I'm still working on a fix for the older permalinks. If you want you can
    change `/archives/...` to `/articles/...` and it should work.
- id: 1530
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: OK the older `/archives` permalinks should work now.
- id: 1531
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-12-26 08:16:00 -0600'
  date_gmt: '2006-12-26 08:16:00 -0600'
  content: It might have been my aggregator partially at fault too, I’m no longer
    sure. I got <em>another</em> batch of dupes after writing that comment, but it
    seems to have been the last. Let’s hope.
---
If you are reading this, I have converted successfully over to Mephisto.

There are still some outstanding issues to be resolved, such as:
 * The theme is the default Mephisto theme, I need to migrate my old theme over to Mephisto. As a result some formatting may look wierd.
 * Some older permalinks (specifically the `/archives` links) won't work right now.
 * Assorted sidebar content is still missing.

Everything else should work OK though. If not, just let me know.

For now I just want to see if the resource usage problems that I was having with Typo are still occurring with Mephisto. If not, then I'll start working on the above issues.
