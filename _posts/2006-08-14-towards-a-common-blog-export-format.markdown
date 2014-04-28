---
layout: post
status: publish
published: true
title: Towards A Common Blog Export Format
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 206
wordpress_url: http://girtby.net/2007/02/20/towards-a-common-blog-export-format
date: 2006-08-14 08:52:50.000000000 -05:00
categories:
- Nerd Factor X
- Me Use Brain
tags: []
comments:
- id: 1465
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    It’s a decent first stab, but much of [James Snell’s criticism of the GData Atom extensions](http://www.snellspace.com/wp/?p=314 "Extending Atom") applies to your proposal as well, if not to the same extent.

    You can get away without any extension elements at all, you only need to mint a URI for a special category scheme. Henceforth, when I refer to the role of an entry, it means that the entry has an `atom:category` element with `scheme` being `http://purl.org/syndication/entry-role/1.0` and `term` being the given role.

    > An atom:category element is required for each *defined* category within the blogging engine. This must be the superset of all categories used in subsequent entries.

    That is abuse, IMO. The weblog does not “belong to” these categories. Something I have proposed to others is to store categories as entries with role Category. Remember that the permalink is optional for an entry. The entry title then is the category name, and you can use the entry content to carry a description of the category – or just leave it out.

    > An atom:contributor element is required for each *defined* author. Optionally, this may include registered users which do not have authoring privileges.

    The [Person Extensions](http://www.google.com/search?q=atompub-author-extensions) might be of interest here, in case you also want to express their status in the system.

    > * A export:page child element may be used if the entry is a static page.
    > * A export:comment child element may be used if the entry is a comment.
    > * A export:trackback child element may be used if the entry is a trackback.

    These should be roles.

    > The atom:published element may be omitted if the article has not been published (that is, a draft).

    That overloads the meaning of the optionality of `atom:published` in a way I’m not comfortable with. It’s optional precisely because not all weblog and CMS software tracks this data. In fact, originally, Atom was going to have *four* different dates, of which two required, but the publishing people revolted. You will also note that Atom deliberately avoids requiring any particular population of `atom:updated` – just that it be present, and that some constraints be fulfilled when entries with identical `atom:id` are present in the same feed.

    Try using role Draft instead. Roles, roles, roles, roles, roles, baked beans, roles and roles.

    > A export:contentsyntax element may be used to indicate a syntax for the content element.

    No. Atom already knows how to do this. Mint MIME types instead, then you can use eg. `<content type="text/markdown">`. No need for reinvention.

    > This attribute contains the atom:id of the entry which is being [<i>commented upon / trackbacked</i>].

    Use the [Feed Thread Extension](http://www.google.com/search?q=atompub-feed-thread) instead.

    All in all, not a bad attempt – you’ve captured the most important things that need to be preserved, the rest is just a matter of expressing them more idiomatically.

    ----

    PS.:

    > The Brilliant Paula Bean

    You mean Brillant.

    PPS.: can you please fix blockquotes in comments? It’s hard to have a conversation without them.
- id: 1466
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    > can you please fix blockquotes in comments?

    Done. Looks like Typo was filtering markup a bit too agressively.
- id: 1467
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    Thanks Aristotle for some great feedback.

    Although I agree with Snell's criticism of GData's use of Atom, I haven't fully formed an opinion on whether the same criticism applies for what I'm trying to do here. Let me mull that one over for a bit more.

    It's interesting that you have suggested a method for extending Atom which is not described in the spec (either that or I missed it). So the first thing that occurs is: why are these "roles" not abuse of the Atom category element?

    It's almost like you're proposing that the category element be used to encode generic RDF tuples (where the 'subject' is the Atom entry itself). I'm wondering why, if the category element was intended to be used in such a way, why doesn't it just say to use RDF and be done with it?

    On a more practical level, I'm wondering how validity constraints can be specified for categories used in this way. But I guess we can cross that bridge when we come to it.

    > Mint MIME types instead, then you can use eg. `<content type="text/markdown">`. No need for reinvention.

    That was my first inclination, but after a brief inspection of the MIME type registration process I got scared off. Will raise it on the Markdown list anyway.

    > Use the [Feed Thread Extension](http://www.google.com/search?q=atompub-feed-thread) instead.

    ACK. I think that a number of these issues will be solved "for free" by the APP crowd.

    Thanks again.
- id: 1468
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    > I haven't fully formed an opinion on whether the same criticism applies for what I'm trying to do here.

    Mostly, I was thinking about your use of an extension element to denote the authoring markup syntax – I did say “not to the same extent.”

    > why are these "roles" not abuse of the Atom category element?

    I guess that is debatable – and the outcome of that would probably depend on how narrow a definition of “category” you chose. RFC4287 itself is happy to explicitly make no particular assertion (see the language in the spec). Note that the the `scheme` attribute is explicitly provided as a means of identifying categorisation schemes by URI. So if you view the role of an entry as a kind of category, then this is a pretty natural interpretation/application of RFC4287.

    > It's almost like you're proposing that the category element be used to encode generic RDF tuples

    That is indeed *sort of* the purpose of the `category` element (cf. `scheme` attribute).

    Note that even by this liberal interpretation, your proposition of carrying the superset of categories in the `feed` element is still abuse of the `category` element.

    On second reading, I’m not that happy with my proposition of rendering categories as entries. It is a workable approach, but seems a bit heavyweight due to the required IDs and timestamps. Defining an extension element to contain a list of categories might be a wiser choice. A middle-of-the-road option might be to have only a single, special-purpose `entry` which is required to contain the category tree in XOXO format. (This choice has the added benefit that it maximises the usefulness of the resulting document with apps that understand Atom, but not the particular extensions in use. This same criterion also favours the use of `category` for entry roles.)

    > why doesn't it just say to use RDF and be done with it?

    There has been a long-standing anti-RDF/XML (but not anti-RDF) sentiment in the WG. Read section 6.4.1 of the RFC for another example.

    I suppose in practice, you could create a role extension that follows the rules of section 6.4.1 and get the same effect I achieved using `category` elements. There really isn’t any effective difference. That would resolve your concern about validation as well.

    I am pretty sure the subject of feed and entry roles came up on <tt>atom-syntax</tt> and there was talk of an extension to convey this information, but I can’t seem to find anything in my archives.

    > after a brief inspection of the MIME type registration process I got scared off

    It’s not that scary if you stay in the VND or PRS trees actually.

    > Will raise it on the Markdown list anyway.

    There was [some discussion about it in Nov 2004](http://six.pairlist.net/pipermail/markdown-discuss/2004-November/thread.html). Nothing happened, so [I flagged the issue again in Apr 2005](http://six.pairlist.net/pipermail/markdown-discuss/2005-April/001211.html). But again nothing came of it, unfortunately. Maybe you’ll have more luck.
- id: 1469
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    Aristotle, have another look. I think I've addressed most of your concerns, but requiring no new elements (yaay!). Instead I just reused elements from APP and Atom Feed Threads.

     * List of categories is now defined using `app:categories` from APP
     * Entry draft status now indicated by `app:control` from APP
     * Uses a `entrytype` category to disambiguate between entries and static pages. And between comments and trackbacks.
     * Uses Feed Thread extension element `thr:in-reply-to` to reference original post for a comment.
     * Allows MIME types but also defines `contentsyntax` for cases where there is never going to be a MIME type. Such as the commonly-used "allow HTML subset and create `<p>` elements from CR characters." syntax.

    Still some outstanding issues but may be ready for the atompub list?
- id: 1470
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    Ah, good job for plucking from APP. Did you leave this instance in there on purpose?

    > An `atom:category` element is *required* for each defined category within the blogging engine. This must be the superset of all categories used in subsequent entries.

    I think this is redundant now. (Just in case it was no accident, my previous criticism still applies of course.)

    Reading on:

    > A `contentsyntax` category may be used to indicate a syntax for the content element. This may only be present when the `atom:content` element contains text (as indicated by the `text` attribute), and should be used only when a registered MIME type is not available.

    The attribute is called `type`; more importantly, I would use RFC 2119 language there. Something like this:

    “A `contentsyntax` category may be used to indicate a custom syntax for the content. It MUST NOT be used when the value of the `type` attribute of `atom:content` differs from “`text`” and SHOULD NOT be used in preference of specifying a registered MIME type for the type of content when one is available.”

    (Guideline: “SHOULD (NOT)” means say “you can do this and we won’t stop you if you want to hurt yourself, but weigh the consequences” and is called for when the consequence is to jeopardise interoperability.)

    Btw, I hope you kept your previous draft? The revision history of a standard and the discussion during the process contain useful knowledge.
- id: 1471
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    Great comments, thanks Aristotle.

    Yes it was an accident to leave that statement about `atom:category` in there. I'll remove it.

    I like your wording regarding the `contentsyntax` category. I had been deliberately avoiding using RFC 2119 on account of the extremely tentative nature of the proposal. But I think that it probably makes sense now.

    I have a copy of the previous draft offline. Will think about how it can be made available if needed.
- id: 1472
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: |-
    Actually, tentativeness is no real concern. RFC 2119 is called for wherever there is a formal requirement of some sort, ie. basically any part of the spec which results in some kind of check in the code (certainly every aspect whose implementation you’d excercise with a unit test). Spec writing is a weird beast: a sort of natural-language programming, You can think of RFC 2119 statements as the code, whereas informal statements are comments. It’s obvious then why formal language is always appropriate. Do not shy away from using it, it gives a clear distinction between code and comments and makes the code more precise.

    Hmm, there was something else that keeps popping into mind but slipping quickly, and now the sense that there’s something I really wanted to tell you is bugging me. But I can’t remember.

    FYI, James Snell just posted on the list that the Atom Threading Extension was assigned RFC 4685. I haven’t found a published RFC 4685 yet, though. (I assume it is going through the last IETF process gyrations.)
- id: 1473
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-08-14 08:52:50 -0500'
  date_gmt: '2006-08-14 08:52:50 -0500'
  content: Just posted revision 0.3 which uses RFC 2119 terminology and has various
    other tweaks. We'll see what the atom-sytnax crowd think of it.
---
In general I find it a lot easier to put my data somewhere that I know I will be able to get it out again. This applies especially for web applications hosted by third-parties, where export facilities are a must before I'll even look at it, but I believe it is generally a good practice.

Hence the motivation for a common interchange format for blog content. This is an escape hatch, if you will, for migration to an unspecified future blogging platform.

Admittedly my recent migration from Wordpress to Typo was pretty easy, so in that that particular instance the lack of a common content exchange format was not a problem. But it certainly is a problem in general. And the less time blog software authors spend on writing importers for all the other blogging engines around the place, the more time they will have to concentrate on features. That sounds like a good thing to me.

It turns out that a content interchange format can be created using some simple conventions over and extensions of the [Atom syndication format](http://atompub.org/rfc4287.html). I've written these up as a proposal for anyone and everyone to comment upon. Please read the ObDisclaimer at the start and let me know your comments.

Enjoy [Content Export with Atom](/offerings/atomexport).
