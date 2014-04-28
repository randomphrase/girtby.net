---
layout: post
status: publish
published: true
title: May Contain Ponies
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 1592
wordpress_url: http://girtby.net/2008/02/09/may-contain-ponies
date: 2007-04-04 00:11:59.000000000 -05:00
categories:
- Nerd Factor X
- Meta
tags: []
comments:
- id: 1566
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: http://marxyblog.blogspot.com/
  date: '2007-04-04 00:11:59 -0500'
  date_gmt: '2007-04-04 00:11:59 -0500'
  content: |-
    Isn't the problem that there are some sites, (ones with ponies?), that will lie and cheat to get their content in front of impressionable people.

    For example, my own kids used to be drawn like "moths to the flame" of sites offering animated cursors and kids games only to end up having their computer infected with trogens that popped up objectionable ads.

    So, assuming these publishers won't play ball with self classification, it means we would need third party classification. That's always going to be controversial. I like looking at good photography, I don't want some conservative telling me it's porn.

    I support the .xxx domain. A lot of sites will go there, you know what you're going to get there, but it won't stop the worst offenders getting through.
- id: 1567
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-04-04 00:11:59 -0500'
  date_gmt: '2007-04-04 00:11:59 -0500'
  content: |-
    > So, assuming these publishers won’t play ball with self classification, it means we would need third party classification.

    Marxy, that's what I was trying to address in the last paragraph. Basically I'm saying that in the general case you can't trust the publishers, and you can't trust third parties. The only way to get a realistic picture of the nature of the content is to aggregate. Employ the wisdom of the crowds, just like we do with search engines. That's the only way I can see for *any* metadata to be worthwhile.

    > I support the .xxx domain. A lot of sites will go there, you know what you’re going to get there, but it won’t stop the worst offenders getting through.

    But this conflicts with what you said previously. The .xxx domain *is* self classification.
- id: 1568
  author: bjkeefe
  author_email: bjkeefe@bjkeefe.com
  author_url: http://bjkeefe.blogspot.com/
  date: '2007-04-04 00:11:59 -0500'
  date_gmt: '2007-04-04 00:11:59 -0500'
  content: |-
    There is something to be said for the "wisdom of the crowds" hypothesis, but I think this technique breaks down whenever the topic in question is purely a matter of taste; e.g., politics, religion, and sex.  Providing a method for the teeming masses to rate a site, say, 1-10 on its adult content level, would likely result in voting spam between zealots of the James Dobson ilk and ultra-libertarians.  Think of the edit wars on certain Wikipedia pages, for example.  In the case of rating a site for adult content, I would also expect less scrupulous webmasters to develop bots that would skew the vote.

    Here's another example:  the <a href="http://www.siteadvisor.com/">McAfee SiteAdvisor</a> offers an add-on for browsers that turns green, yellow, or red, based on its safety evaluation of the current site for things like spyware and spam.  Part of its rating system comes from its own automated web crawling, and part comes from user input.  SiteAdvisor tends to produce a lot of false positives -- a yellow or red rating -- that from my observations seem to stem from negative votes cast by as few as two other users.  In many cases, these users seem to have been motivated by animus toward the site's point of view or personal dislike of the site's owner -- they'll report that a site's download offerings contain spyware when they don't, or when a site doesn't even offer any downloads.  The obvious consequence is that one tends to ignore the SiteAdvisor warnings after a while.

    None of this is to say that your idea is completely without merit.  It couldn't hurt to try, I suppose, and any additional tool may be of use to some people.  I just have serious doubts as to how well it could work.
- id: 1569
  author: Alastair
  author_email: alastair@girtby.net
  author_url: http://girtby.net
  date: '2007-04-04 00:11:59 -0500'
  date_gmt: '2007-04-04 00:11:59 -0500'
  content: |-
    Well, I think that if an aggregate content rating were to achieve the same level of accuracy as Wikipedia does with its subject matter, it would be doing pretty well, edit-wars or no edit-wars.

    A key ingredient in getting a decision from a wise crowd to ensure that each of the members is acting independently. This clearly isn't the case with Wikipedia, where the most recent edit "wins", but could be the case for an aggregated rating system.

    Also not everyone has to be using the same classification scheme. One group of people could be using FOSI and another group could be rating sites for their pony content, and we would only need to aggregate like with like.

    Lastly, the whole premise of the wisdom of crowds is to allow errors to be cancelled out. In the ratings system this means extreme opinions will be nullified by equal and opposite extremes.

    Dammit, it has to work! Because I don't like the alternative of single-source ratings!
---
Since the [last entry](/articles/2007/4/1/i-want-a-pony-domain) on the .xxx domain proposal, and subsequent discussions in another forum, I've been thinking a bit about how content rating should work.

To my mind a key requirement for technologies to rate content on the internet is that it should allow for multiple content classification criteria originating from many different, disparate sources. This is the biggest problem that I see with the .xxx domain: it requires that everyone everywhere agree what sort of content should be classified this way. Such agreement is clearly not likely in all but the most extreme corner cases.

In answer to the question posed in my last post, it seems that the W3C's preferred replacement for PICS is ... <acronym title="Resource Definition Framework">RDF</acronym>. No, not not *that* <acronym title="Reality Distortion Field">RDF</acronym>, although there probably is a bit of the second kind of RDF going on around the first kind of RDF.

RDF is flexible enough to describe all kinds of metadata, not just content ratings. And when describing content ratings for a site, I believe it can rate against multiple classification schemes.

By way of experiment I obtained a RDF-based content rating for this site using the [Family Online Safety Institute](http://fosi.org/icra/) classification scheme. They have an online tool to generate the rating and it is pretty straightforward; just fill in a form and they email you the RDF file and instructions on how to add it to the site. You can go to the [label tester](http://www.icra.org/sitelabel/) to see the results.

The [labelling guidelines](http://checked.icra.org/labelguidelines/) are well described, with the possible exception of the language ratings. These are sufficiently vague that I ended up simply picking the middle-of-the-road rating in lieu of the missing "pretty clean but occasional f-bombs" rating.

But the point is that however imperfect this rating system is, it does at least allow co-existence with others. So I could also use a hypothetical pony-based rating system which classifies sites in terms of exposure to ponies, and rate my site using *both* FOSI and PONI schemes.

To pick a possibly more useful hypothetical rating system: how about a rating system to declare content that contains images and recordings of deceased persons? I understand that such content is distressing to some Aboriginal people. There are probably many other useful rating systems not yet in existence.

The only missing piece of the puzzle is how to rate *other* people's content. The problem of finding a third-party rating for a given site is one that I haven't seen a solution for. Similarly the ability to attach a rating to a hyperlink (for example, replacing the ubiquitous "[NSFW]" tag) would be useful, and I'm not sure how this would work.

Brendan [raised the point](http://bjkeefe.blogspot.com/2007/03/xxx-nixed.html) that content labelling should be voluntary and I obviously agree with this. It's a logical extension of the provision that multiple rating systems should be allowed. I would probably go one step further and say that it should be possible for others to label your content, whether or not you choose to do it yourself.

There are lots of security issues relating to this &mdash; and [RFC 3675](http://www.ietf.org/rfc/rfc3675.txt) addresses most of them &mdash; but I don't think these are insurmountable. The question of which rating is authoritative for a given site is very similar to the question of which site is appropriate for a given search term. Search engines seem to have sorted out this problem to a reasonable level of approximation.

The ability to aggregate multiple ratings for a given site into some coherent whole seems like a key requirement for any technology that allows distributed rating. When a single agency &mdash; either the content author themselves, or a third-party &mdash; is solely responsible for rating content, there is the potential for abuse or mistake. This can only be mitigated effectively by allowing multiple independent agencies to rate content. In fact this is a general metadata problem, and I'd be interested to see how this will be addressed.
