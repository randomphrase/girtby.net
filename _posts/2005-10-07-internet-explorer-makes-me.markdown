---
layout: post
status: publish
published: true
title: Internet Explorer Makes Me ☹
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  <strike>Suckers</strike> <strike>Clueless n00bs</strike> Discerning users of Microsoft Internet Explorer will have noticed the weird "missing character" glyph in the title of a [previous post](/archives/2005/10/05/complexity-design/) will no doubt see the title of this post and wonder what the hell I'm up to. Firefox users on Windows seeing a question mark may be thinking the same thing.

  The unusual character in the title of this post is a unicode character, specifically 0x2639, and otherwise known as WHITE FROWNING FACE.

  [Incidentally there's no black frowning face in the unicode character set. There is, however, a "&#x263A;" (WHITE SMILING FACE, 0x263A) to go with the "&#x263B;" (BLACK SMILING FACE, 0x263B). Explaining this inconsistency is left as an exercise for the reader.]

  The white frowning face isn't really a fair character to use on the web. This is because Windows doesn't seem to have a glyph for this character in any of the default fonts. So like I said, not exactly fair, but I couldn't help myself.

  The disappearance of the 'not-implies' symbol from the title of the [previous post](/archives/2005/10/05/complexity-design/) requires a bit more explanation. It displays on almost all modern browsers that I have access to (or could be bothered installing), with one obvious exception. So, why doesn't it display on IE? A glyph definitely exists in the default set of Windows fonts for this character - otherwise it wouldn't display in Firefox. So what's up?



wordpress_id: 140
wordpress_url: http://girtby.net/2007/03/11/internet-explorer-makes-me
date: 2005-10-07 00:47:17.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1262
  author: Julian
  author_email: girtby@somethinkodd.com
  author_url: http://oddthinking.somethinkodd.com
  date: '2005-10-07 00:47:17 -0500'
  date_gmt: '2005-10-07 00:47:17 -0500'
  content: |-
    There may be another workaround, but I haven't tested it.

    Not for you (the web-site owner), but for the <a href="http://www.theregister.co.uk/2005/04/28/_ie_firefox/" rel="nofollow">80-odd percent</a> of the Internet users who are clueless noobs.

    I figure if you can get an updated copy of the Arial font that includes all the relevant Unicode characters, the problem will effectively go away.

    Then, I found that there is such a <a href="http://support.microsoft.com/kb/q287247/" rel="nofollow">font already exists</a>. It is included with late versions of Microsoft Office, but it is not recommended for day-to-day use because of its size (22 MB).

    If I could work out how to substitute that font for <code>C:\Windows\Font\Arial.ttf</code>, it would either fix this relatively trivial problem, slow down my computer immensely, or destroy my Windows installation. Hmmm, maybe I will hold off on this experiment until I have a Windows installation I don't mind trashing. (You may insert your own cynical comment about what percentage of Windows installations that might include, right here.)
- id: 1263
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-10-07 00:47:17 -0500'
  date_gmt: '2005-10-07 00:47:17 -0500'
  content: |-
    Nice find, Julian.

    The font installs as described by the knowledgebase article you pointed to. This installs an "Arial Unicode MS" font *in addition* to the standard Arial font. So I see why you would want to experiment with substituting this font for the standard Arial font: to fix IE.

    Fortunately I can verity that merely installing this font fixes the character glyph problems (including the WHITE FROWNING FACE) in Firefox.

    I should mention that another fix might be to install the shareware [Code2000](http://home.att.net/~jameskass/code2000_page.htm) unicode font. This might be a more economical option than purchasing Microsoft Word if you don't already have it.
- id: 1264
  author: Sunny Kalsi
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2005-10-07 00:47:17 -0500'
  date_gmt: '2005-10-07 00:47:17 -0500'
  content: Hmm... I remember downloading Arial MS from the internets (for use in Linux,
    because I didn't have enough unicode fonts), and I think it may have been on a
    "microsoft knowledge" type base site somewhere. Something I noticed was that Arial
    was by far the most complete unicode font they had (at least, it was the largest
    to download). I think this is why IE does the Arial trick, because it thinks of
    Arial MS as the "one font to rule them all".
- id: 1265
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-10-07 00:47:17 -0500'
  date_gmt: '2005-10-07 00:47:17 -0500'
  content: |-
    Sunny, you may be thinking of the Microsoft [TrueType core fonts from the Web](http://www.microsoft.com/truetype/fontpack/win.htm)? This included some really nice fonts, including Trebuchet and Verdana, two of my faves. It also includes Arial, but I'm pretty sure it is an earlier version. The new Arial is 22MB, whereas the one available for download is in a 500K .exe (I can't be arsed downloading to see the extracted size, but I'm guessing less than 22MB).

    The "one font to rule them all" idea sounds great (or at least acceptable) - if it worked. As I mentioned above, you end up with *both* Arial and Arial MS Unicode.

    Interestingly, Microsoft no longer hosts downloads of these fonts from their site. However they are still widely available thanks to a non-restrictive license, at least that's what it claims [on the sourceforge page](http://corefonts.sourceforge.net/).
- id: 1266
  author: Wade
  author_email: wade@waded.org
  author_url: http://www.waded.org
  date: '2005-10-07 00:47:17 -0500'
  date_gmt: '2005-10-07 00:47:17 -0500'
  content: 'You can learn more about font fallback &amp; linking here: http://www.microsoft.com/globaldev/getwr/steps/wrg_font.mspx'
---
<strike>Suckers</strike> <strike>Clueless n00bs</strike> Discerning users of Microsoft Internet Explorer will have noticed the weird "missing character" glyph in the title of a [previous post](/archives/2005/10/05/complexity-design/) will no doubt see the title of this post and wonder what the hell I'm up to. Firefox users on Windows seeing a question mark may be thinking the same thing.

The unusual character in the title of this post is a unicode character, specifically 0x2639, and otherwise known as WHITE FROWNING FACE.

[Incidentally there's no black frowning face in the unicode character set. There is, however, a "&#x263A;" (WHITE SMILING FACE, 0x263A) to go with the "&#x263B;" (BLACK SMILING FACE, 0x263B). Explaining this inconsistency is left as an exercise for the reader.]

The white frowning face isn't really a fair character to use on the web. This is because Windows doesn't seem to have a glyph for this character in any of the default fonts. So like I said, not exactly fair, but I couldn't help myself.

The disappearance of the 'not-implies' symbol from the title of the [previous post](/archives/2005/10/05/complexity-design/) requires a bit more explanation. It displays on almost all modern browsers that I have access to (or could be bothered installing), with one obvious exception. So, why doesn't it display on IE? A glyph definitely exists in the default set of Windows fonts for this character - otherwise it wouldn't display in Firefox. So what's up?



<a id="more"></a><a id="more-140"></a>


Let's save some time at this point and head straight for the [source of all world knowledge](http://en.wikipedia.org/wiki/Unicode_and_HTML#Web_browser_support):

> Internet Explorer is capable of displaying the full range of Unicode characters, but can't automatically make the necessary font choice. Web page authors must guess which appropriate fonts might be present on users' systems, and manually specify them for each block of text with a different language or Unicode range. A user may have another font installed which would display some characters, but if the web page author hasn't specified it, then Explorer will fail to display them, and show placeholder squares instead.

Broken, or what? But I found it isn't quite as simple as all that. I had noticed that sometimes IE is able to find the right glyph for special unicode characters, and other times not. Experimentation was called for.

First I picked three fonts to test with: Georgia, Arial, and Lucida Sans Unicode. Using the Windows Character Map application I was able to pick two characters which were present in at most one of the test fonts. The first character was "&#9829;" (BLACK HEART SUIT, 0x2665) and is present in Arial but not in the other fonts. The other character chosen was our favourite from last time "&#8655;" (RIGHTWARDS DOUBLE ARROW WITH STROKE, 0x21CF), which of the three is only present in Lucida Sans Unicode.

I then created a test page which attempts to display each of the two test characters in each of the three test fonts. Here is a screenshot of the result in IE:

<img src="/images/ie-unicode-test.png" height="223" width="429" alt="Screenshot of IE's rendering of test fonts and characters" class="centered" />

The thing to note here is that when a glyph does not exist in the chosen font, but it does exist in Arial, the Arial glyph is displayed. However this is *not* the case for Lucida Sans Unicode. Arial seems to be special in this way.

So this seems to explain why some unicode characters display and some don't. Basically, if it's not in the font you select, or in Arial, it's not going to get displayed by IE.

Just in case you were wondering, the list of alternative fonts allowed by the CSS `font-family` selector makes absolutely no difference. I can append Lucida Sans Unicode to the list of fonts used to draw the not-imply arrow, and it gives results identical to those above. Were you thinking you could add a bunch of "last resort" fonts like Lucida Sans Unicode to your alternative font list for the document, all for the benefit of IE users? Forget it.

Instead IE gives you a kind of "first resort" font. For IE to pick a non-Arial unicode character, you must know the correct font (a problem in itself), and it must be the *first in the list of alternative fonts*. In other words, you must have something like:

    font-family: 'Lucida Sans Unicode', Followed, By, Other, Fonts;

Which is fine if you want your whole document in that font. Which you probably don't. So if you want non-Arial glyphs to display in IE, you need to apply the appropriate CSS to individual characters to select the pre-determined Windows font that supplies the glyph. Bleagh.

In certain circumstances I (for one) can't even do that. I'm not sure if Wordpress officially supports the required HTML markup in the title of a post, but anyway I tried it and it doesn't work. So even if I particularly wanted to work around the IE breakage (which I don't) I would run slap-bang into another bug/limitation, that of Wordpress.

So instead I'll just ask IE users to contact your browser vendor for a fix to this problem. Good luck!
