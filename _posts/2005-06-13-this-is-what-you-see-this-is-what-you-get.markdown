---
layout: post
status: publish
published: true
title: This is What You See. This is What You Get.
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Recently, I was talking with a Distinguished Colleage on the subject of Wikis. After having had to deal with the [six single quotes](http://c2.com/cgi/wiki?SixSingleQuotes) rule, he complained that complicated markup syntax was a limitation of Wiki technology (or current implementations maybe) and that an ideal solution would allow WYSIWYG editing of content. He wanted all the advantages of Wikis but with a Microsoft Word interface. I disagree with this, and here is an attempt to explain why.



wordpress_id: 109
wordpress_url: http://girtby.net/2007/02/22/this-is-what-you-see-this-is-what-you-get
date: 2005-06-13 21:38:24.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1163
  author: Garth T Kidd
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2005-06-13 21:38:24 -0500'
  date_gmt: '2005-06-13 21:38:24 -0500'
  content: I'm using reStructuredText for my blog postings and associated (but barely
    used) personal Wiki. It's a real markup language, not a series of regexp hacks
    stacked to the point of incomprehensibility. The main barrier to widespread adoption
    seems to be that it's implemented in Python, not Perl.
- id: 1164
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-06-13 21:38:24 -0500'
  date_gmt: '2005-06-13 21:38:24 -0500'
  content: |-
    Your "real markup language" is [showing](http://www.deadlybloodyserious.com/2005/06/20.html#P67):

    > Docutils System Messages
    > System Message: ERROR/3 (); backlink
    > Anonymous hyperlink mismatch: 1 references but 0 targets. See "backrefs" attribute for IDs.

    Seriously though, I like reST, but if it were that much better than the others surely there would be a second, non-python, implementation by now? Disagree that Perl is the language of choice for these things. I would say PHP instead.
- id: 1165
  author: Aaron Swartz
  author_email: me@aaronsw.com
  author_url: http://www.aaronsw.com/
  date: '2005-06-13 21:38:24 -0500'
  date_gmt: '2005-06-13 21:38:24 -0500'
  content: Whatever their flaws, "regexp hacks" cannot possibly be a distinguishing
    factor in making something "a real markup language" for the simple fact that they're
    an _implementation detail_!
- id: 1166
  author: OddThinking &amp;amp;raquo; You can&amp;amp;#8217;t always get WYW
  author_email: ''
  author_url: http://www.somethinkodd.com/oddthinking/?p=38
  date: '2005-06-13 21:38:24 -0500'
  date_gmt: '2005-06-13 21:38:24 -0500'
  content: '[...] At Girtby.net, Alastair writes to defend the ease of editing Wiki
    pages over WYSIWYG. [...]'
---
Recently, I was talking with a Distinguished Colleage on the subject of Wikis. After having had to deal with the [six single quotes](http://c2.com/cgi/wiki?SixSingleQuotes) rule, he complained that complicated markup syntax was a limitation of Wiki technology (or current implementations maybe) and that an ideal solution would allow WYSIWYG editing of content. He wanted all the advantages of Wikis but with a Microsoft Word interface. I disagree with this, and here is an attempt to explain why.



<a id="more"></a><a id="more-109"></a>


#### The Web Is Not WYSIWYG

Perhaps an obvious point. At least, the web is not <acronym title="What You See Is What I Get">WYSIWIG</acronym>. What you see on your browser is almost certainly not what I see on mine due to many factors. Differing font sets, typographic capabilities of the OS, use of [subpixel rendering][], browser rendering engine/version, user display preferences such as screen resolution/depth, display gamma, as so on.

I suppose that most of the time this isn't a problem, but it depends on the degree to which you, as an author, are relying on visual representation to convey meaning. It's annoying, but not the end of the world, when the borders are 1 pixel too thick or the fonts go all jaggy. However, consider the case where a user has their default typeface set to Arial Bold, and the author of a page has chosen to use the same typeface for *emphasis*. In this case the emphasised words are no longer visually distinct from the remainder of the body text, and hence the emphasis is removed, potentially changing the message. Admittedly this is a fairly contrived example, but the point is that you are making assumptions about the way the reader will see your work, and these assumptions do not necessarily hold true. In an [earlier post](/archives/2005/03/17/dont-use-wingdings/) I described how sometimes formatting (in this case font selection) was used to change one character into another; without that specific font installed, the reader would see a completely different character to the author.

This is why HTML emphasises [structural markup][]. You, as an author of a web page, have to understand the difference between using a bold typeface and the correct markup for emphasised text: the former is one possible representation of the latter. [Web authoring is not word processing](http://www.pantos.org/atw/f-35426.html#T3). The more you make your web authoring environment look like a word processor, the more likely it is that users will treat it as such.

[subpixel rendering]: http://en.wikipedia.org/wiki/Apple_typography#Subpixel_rendering
[structural markup]: http://www.pantos.org/atw/h-35589.html

#### WYSIWYM Editors?

You may be thinking OK, so why don't we get wise to this structural markup stuff, *then* adopt a visual editor (I'm going to shy away from the term WYSIWYG at this point) because although we understand the concepts, we still don't like all the angle brackets. Can we justify a visual editor in this case? In other words an editor that allows manipulation of structural markup without requiring the user to delve into the markup language syntax; sometimes known as <acronym title="What You See Is What You Mean">WYSIWYM</acronym>. I am hopeful, and there are some promising developments, but I have yet to see it done.

It's not an easy ask. The reason is that some markup elements affect the visual representation in subtle ways. Consider the difference between the `<br/>` and `</p><p>` constructs in XHTML for example. Each is a good way of terminating a line of text, but it's not always easy to see on the screen which is actually present, under the covers. A more obivous example might be the `<a id="blah"/>` tag which has *no* visual representation.

These types of problems multiply when it comes time to edit. Consider the (probably) most widely-used HTML editor today: Microsoft Outlook. While some of the pain of writing HTML emails with this tool can be attributed to bugs, I would say that there is a fair share of Unexpected Behaviour which is there by design. Consider:

 1. Open a new email in Outlook
 1. Format > HTML
 1. Type some words
 1. Select a word
 1. Insert > Hyperlink
 1. Type a URL and click OK
 1. Now put the cursor at the end of the hyperlinked word
 1. Backspace
 1. Notice that the last letter of the word **and the entire hyperlink** both disappear

Repeat this experiment using bold text instead of a hyperlink for an example of what I would consider expected behaviour. However, I can see that there may be a good argument for doing it either way (but not both!). On one hand you could say that the backspace key is removing the unseen `</a>` tag at the end of the word, and in order to ensure well-formedness, the opening `<a>` tag must also be removed. On the other hand if you consider the word to be a sequence of characters formatted identically, and that the hyperlink is applied to each character individually, then it makes sense to *not* remove the hyperlinks from the rest of the letters of the word. Either way might make sense, depending on your perspective.

An [article](http://www.atpm.com/4.12/page7.shtml) at atpm.com describes some other limitations of WYSIWYG editors, including certain descriptive types of layout that can only be achieved by a powerful markup language. I'm sure it is still the case that the 15+ year-old LaTeX can do things that state-of-the-art WYSIWYG page layout tools like Adobe InDesign cannot do. I think the situation is similar for XHTML editing; the advanced techniques described at [a list apart][] (for example) aren't going to be available in a visual editing environment any time soon.

So far I've just talked about the limitations of single-user visual editing. Remember this topic came up in the context of Wikis, where, like most multi-user authoring systems, differencing and merging are required operations.  The types of problems mentioned previously become significantly more difficult when multiple users are editing at the same time.

[a list apart]: http://alistapart.com/articles

#### Texty Goodness

Rather than deal with all this complexity I think that Wikis (and other online authoring tools) have taken a different approach. If the real problem is the user-unfriendliness of the markup language syntax, then one solution must be to create a new, simplified syntax. This is the approach currently favoured by most (all?) Wikis, with admittedly varying degrees of success. The basic idea is simple enough though: use relatively common text conventions as substitutes for the desired markup. For example, `*foo*` becomes `<em>foo</em>` after processing.

I am typing this using the [markdown][] syntax which I find very <del>natural</del> easy to read and write, but there are lots of others and not all of them are as elegant. Certainly more work is needed but I think the progress will be quicker in this area than with WYSIWYM editing tools.

This discussion originally came up in the context of Wikis as a communication tool for software development teams. And even at their most bizarre, these proto-HTML syntaxes are far more intelligible than the simplest of programming languages. The learning curve is just not that steep, or high. (Although it is a problem when you have to switch between multiple similar syntaxes, this is an argument for one syntax, not none).

[markdown]: http://daringfireball.net/projects/markdown/

#### The Price of Freedom is Eternal Tweaking

Clever text syntax rules only get you so far. Obviously the full range of possible XHTML tags can't be easily, or intuitively, represented by text syntax. So it's not a general solution to the problem of editing XHTML. However for fragments of XHTML embedded within a larger content management system, and for which a site-wide styling is provided, providing only a restricted subset of XHTML for authors is actually a *good thing*.

[Ransom note typography](http://www.techweb.com/encyclopedia/defineterm.jhtml?term=ransom+note+typography) is rampant amongst the technical documents that I see on most days. By providing maximum flexibility the existing WYSIWYG tools are also providing no incentive for the authors to use the tools within the boundaries of readability, or good taste. Sometimes it's unintentional, as when copy-n-pasting from other sources.

[Aside: I would love it for Microsoft Word to enforce some of the more obvious stylistic violations on users unless they demonstrate that they know what they are doing. Maybe they should refuse certain number of fonts, sizes, line/paragraph spacings, and combinations of these within a given paragraph style. Make "match destination style" the default when pasting formatted text. I'm sure people who know more about typography than I could come up with a short-list of a dozen Word features changed or disabled.]

If you take away the ability for authors to tweak their formatting, they are left to concentrate on the raw text. And if you set things up correctly, all the documents will be equally legible. Yes they all look the same. Like I said, this is a good thing.

I'm sure there are places in the world for WYSIWYG editors. But not for documents that are intended to be delivered to the web *first* (as most should be by now). Hopefully when WYSIWYM editors become more mainstream we'll see WYSIWYG die out except for use by professional typesetters. One can only hope.
