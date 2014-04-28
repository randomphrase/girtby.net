---
layout: post
status: publish
published: true
title: Don't use Wingdings
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Here's a fun way to pass the time. If you like discussing the intimate details of character encodings, that is. Or reverse engineering various Microsoft products to see how broken they are.

  If you don't think this is fun, then please just take my advice and move on. Don't use the Wingdings for anything. If you're a developer, embrace Unicode. That's it. Nerds, read on...

wordpress_id: 85
wordpress_url: http://girtby.net/2007/07/08/dont-use-wingdings
date: 2005-03-17 21:22:51.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1075
  author: Matt
  author_email: matt@mattrubinstein.com
  author_url: http://mattrubinstein.com
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: |-
    My Unicode 61664 gives a cute little ear. At least it looks like an ear.

    Wingdings etc are clearly just for people who want to type up family newsletters etc and print them up themselves; they certainly can't be trusted in any other application (or on anyone else's computer).

    And Word is totally bogus on Unicode anyway; try getting it to display a character that's in your font but outside the bottom 256. I can't figger it anyway.
- id: 1076
  author: Alan Green
  author_email: alan.green@cardboard.nu
  author_url: http://cardboard.nu
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: 'Matt: Try using Insert&gt;Symbol - it shows all the glyphs in each font.
    "Lucida Sans Unicode" is an OK Unicode font. It has European letters, mathematics,
    arrows and IPA symbols.'
- id: 1077
  author: Matt
  author_email: matt@mattrubinstein.com.au
  author_url: http://mattrubinstein.com.au
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: My Insert&gt;Symbol only shows a pitiful handful of the glyphs actually
    in the font; even good old Times New Roman has things like OE thorn and edh which
    show up in Font Book but not in the Symbol charts. Symbol only seems to give you
    (quickly counts) 224 characters no matter how you slice it... this is on a Mac
    mind you so we may be hobbled by the Word build.
- id: 1078
  author: Steve
  author_email: mailmagnet@mac.com
  author_url: ''
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: |-
    This excerpt from the blog entry above:

    "Note that in each case the characters are symantically different."

    seems to indicate that you've come of age in the era in which the spelling of the word pronounced "suh-man-tick" has been dominated by the creatively misspelled name of certain large software company.  I believe the word you meant to use is spelled "semantically"...
- id: 1079
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: Thanks for the spelling correction. I wouldn't read too much into it though...
- id: 1080
  author: codeman38
  author_email: cody@zone38.net
  author_url: http://www.zone38.net/
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: 'This gets particularly annoying when people compose e-mails in Outlook,
    and all their smileys turn into "J"s.  Why?  Simple:  typing in ":)" AutoCorrects
    to the smiley character in WingDings, which, of course, is mapped to the letter
    J.'
- id: 1081
  author: codeman38
  author_email: cody@zone38.net
  author_url: http://www.zone38.net/
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: 'Matt: Try enabling the Character Palette under System Preferences &rarr;
    International &rarr; Input Menu.  It works in Word 2004, at least, though not
    in the original version of Word X.'
- id: 1082
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: |-
    <blockquote>
      <p>OK it’s not a difficult fix, probably three lines worth of XSLT, but I mean really.</p>
    </blockquote>

    <p>Turns out that you can’t do it without some EXSLT extensions and then it’s still <a href="http://plasmasturm.org/log/386/" rel="nofollow">a bit more than three lines</a>.</p>

    <p>[Edited to fix URL with Aristotle's permission - Alastair]</p>
- id: 1083
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: |-
    <p>Aristotle, I am in awe of your l337 XSLT skillz.</p>

    <p>However I don't see any reason why the <code>&lt;w:sym w:char="abcd"/&gt;</code> element couldn't be converted into the <code>&amp;x#abcd;</code> numeric entity in the general case. Your code handles and additional constraint that I don't see as being a general one..</p>
- id: 1084
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2005-03-17 21:22:51 -0600'
  date_gmt: '2005-03-17 21:22:51 -0600'
  content: |-
    <p>You wanted to escape that entity’s ampersand, I think. Anyway, yes, I forgot about that – if you have a pipeline for XML and adding an extra stage to it is no problem, then indeed it could be achieved quite easily with the aid of <code>disable-output-escaping</code> in a preprocessing transform. Dirty as all heck, but it certainly involves much less swinging from tree to tree in the jungle at 90mph than I had to go through to avoid preprocessing.</p>

    <p>Note that as I mentioned at the beginning of the article, if your XSLT processor’s <code>document</code> function understands the <code>data:</code> scheme, you need neither preprocessing nor my gruesomely fascinating code accident – you can go straight for the jugular by abusing it to reinvoke the XML parser on the spot.</p>
---
Here's a fun way to pass the time. If you like discussing the intimate details of character encodings, that is. Or reverse engineering various Microsoft products to see how broken they are.

If you don't think this is fun, then please just take my advice and move on. Don't use the Wingdings for anything. If you're a developer, embrace Unicode. That's it. Nerds, read on...

<a id="more"></a><a id="more-85"></a>



Open up a new document in Microsoft Word 2003 on Windows XP. Choose Symbol from the Insert menu. Set the font to Wingdings and insert the Right Arrow character:

<img src="/images/insert-symbol-win.png" alt="Insert Symbol on Windows" width="538" height="395"/>

So you think you've just inserted a right arrow into the document eh? OK well try saving the document as HTML and opening it in Mozilla. What do you see?

That's right, there's an &agrave; where your arrow should be, in both the title and body of the document. The same thing can happen if you copy and paste into FrontPage, and then use "clear formatting". Or into Outlook.

In fact it's far worse in Outlook, because when you've selected "Plain Text" as the format for the email, the right arrow still appears as a right arrow, but when it's *sent* it changes to an &agrave;. I find it just incredible that anyone would design an email program this way.

Given this breakage, it seems the safest thing to do is not use Wingdings at all, at least on Windows (see below for MacOS X comparison). Instead use a Unicode font like Arial - it's got all the symbols you'll ever need. And if it doesn't have the right symbol for you, you probably should be embedding a graphic.

So what's really going on here? Look more closely at the insert symbol dialog box above. See the character code is listed as 224? Well, let's look at Unicode character 224: &#224;. Hmm, looks mighty familiar!

Basically Wingdings is it's own character set. That is, it contains it's own mapping of character codes to characters. So where Unicode uses 224 to represent an &agrave;, Wingdings uses it to represent a right arrow. Where Unicode, US-ASCII and most other character sets use the value 65 to represent a capital A, Wingdings uses it to represent a hand with two fingers up in a V for Victory sign (not unlike &#x270c;, the unicode VICTORY HAND). Note that in each case the characters are *semantically* different. Compare two fonts like Arial and Times New Roman, and you'll find that the appearance might be different for the same character code, it's still the same character.

So it's OK to use multiple character sets in Word, as long as you trust it to keep track of which parts of your document use which character encodings. I hate to think of the complexity behind the scenes.

The problem comes when you go to other domains that don't allow mutliple character encodings. Like the web (and I'm including HTML and XML here). These formats have no need to support multiple character encodings, because we have Unicode. Basically as soon as you publish your Word document with all it's funky character encodings as HTML, it becomes an incomprehensible mess (or in my case, *more* of an incomprehensible mess) because it screws up the transcoding of symbol characters to Unicode.

You might be wondering whether or not Word is even *capable* of translating the different character encodings, that it obviously uses under the covers, into Unicode. Well if you save the document as XML, look how it gets encoded:

    <w :sym w:font="Wingdings" w:char="F0E0"/>

OMG, what *were* they thinking? Check out the [documentation for the w:sym element](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/WordXMLCDK/html/cdkwelesym_HV01114886.asp). It's a single character (*presumably* unicode, but that's a spec problem) represented as ... an XML element. OK so maybe you don't buy all this XML philosophy about text versus markup, but on a purely practical level, if every XML parser in the world can understand this character encoded as an entity (ie `&#xF0E0;`), then that should be the way to go, right?

As it stands, **every** application that wants to reliably parse the text from a WordML document has to special-case the `w:sym` element. OK it's not a difficult fix, probably three lines worth of XSLT, but I mean really.

Anyway what this does show is that Word 2003 can do the Wingdings to Unicode mapping, albeit only for certain output formats (ie XML and *not* HTML). So what happens on the Mac? Have a look at the insert symbol dialog on Word 2004 for MacOS X:

<img src="/images/insert-symbol-mac.png" alt="Insert Symbol on MacOS" width="566" height="414"/>

Well lookee here. It does a translation of the inserted character into unicode at the time you insert it! Character code 224 becomes Unicode character 61664, which looks like this: &#61664; . If you're like me you probably don't have a glyph for this character and your browser is probably displaying a question mark. That's because this character is in the [private use area](http://www.unicode.org/charts/PDF/UE000.pdf) of the Unicode codepoint range, where they don't define any characters.

When you save this document as HTML and view it in a browser, the right arrow appears in the title bar as  &#8594;. That's Unicode character 8594 (0x2192), otherwise known as RIGHTWARDS ARROW. Hooray, a successful transcoding from Wingdings to Unicode! The same thing happens if you choose to save the document as Unicode text.

Unfortunately in the body of the HTML document it all goes to pieces. Word writes out a &agrave; character, with the Wingdings font applied via an inline style. Oh dear.

[Incidentally Camino and Firefox on MacOS both get this *totally* wrong and display something like a &#x21d7; instead. Safari gets it right though.]

So Word 2004 on the Mac is doing a slightly better job than Word 2003 on Windows. It seems to be converting the Wingding symbols into unicode when you insert them. Unfortunately, instead of mapping the characters into their correct Unicode code points like it should be doing, it just uses the private use area. Probably a hack - it wouldn't surprise me if Unicode is actually a requirement for application interoperability on MacOS.

So far I've picked on Wingdings, but really the message is not to use any non-standard character sets. This includes the other dingbat fonts like Symbol, Zapf Dingbats, Webdings, etc.

I have no opinion on the Wingdings typeface as a collection of glyphs. However the reason you shouldn't use it is because it uses a different character encoding from, well, everything else. I'm sure the reasons are historical, and at some point Wingdings will be re-encoded to make it a Unicode font. Or maybe Word will get smarter about transcoding it into Unicode. Until that time steer clear of it and all like it.

As stated above, use a Unicode font instead. On the Mac, get used to the "Special Characters..." pallette. On Windows, the Character Map application is your friend; turn on "Advanced View" and look for Unicode fonts. All the characters are in there, waiting for you to use them.

(Disclaimer to all the above: I am not a Unicode or character encoding or even a typography guru. Consult your doctor if pain persists.)
