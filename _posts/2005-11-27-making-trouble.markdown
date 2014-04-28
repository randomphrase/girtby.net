---
layout: post
status: publish
published: true
title: Making Trouble
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Here is a puzzle for software developers who know about the [GNU make](http://www.gnu.org/software/make/) tool. Answer after the fold below.

  Say we have a makefile target for a file called `timestamp`. As you might guess, the file contains the current time as reported by the `date` utility. Let's see what happens when we try to `make` it:

      $ ls timestamp
      ls: timestamp: No such file or directory
      $ make timestamp
      make: `timestamp' is up to date.
      $ ls timestamp
      ls: timestamp: No such file or directory

  Hmm. What's going on here? Perhaps timestamp is a [phony target](http://www.gnu.org/software/make/manual/html_chapter/make_4.html#SEC41)? Maybe the debug output will be more enlightening:

      $ make -dr timestamp
      GNU Make 3.80
      [... irrelevant output snipped ...]
      Updating goal targets....
      Considering target file `timestamp'.
       File `timestamp' does not exist.
       Finished prerequisites of target file `timestamp'.
      Must remake target `timestamp'.
      Successfully remade target file `timestamp'.
      make: `timestamp' is up to date.

  OK that didn't help. So I bet you're dying to look at the Makefile.

      DATE=/bin/date

      timestamp :
          ${DATE) > ${@}

  You don't need to know anything special about makefiles to solve this one. Perhaps the only non-obvious part is that the `@` variable refers to "the current target", in this case the `timestamp` file.

  Worked it out yet?



wordpress_id: 157
wordpress_url: http://girtby.net/2008/08/19/making-trouble
date: 2005-11-27 12:52:57.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1318
  author: Sunny Kalsi
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2005-11-27 12:52:57 -0600'
  date_gmt: '2005-11-27 12:52:57 -0600'
  content: <p>Actually, this is a common occurrence. I found that thing because I've
    been bitten before (at least, after I read "mismatched braces" I found it instantly).
    Incidentally, I use bitstream vera mono (the default linux "courier new"). I must
    say it's near perfect, and a lot more readable too.</p>
---
Here is a puzzle for software developers who know about the [GNU make](http://www.gnu.org/software/make/) tool. Answer after the fold below.

Say we have a makefile target for a file called `timestamp`. As you might guess, the file contains the current time as reported by the `date` utility. Let's see what happens when we try to `make` it:

    $ ls timestamp
    ls: timestamp: No such file or directory
    $ make timestamp
    make: `timestamp' is up to date.
    $ ls timestamp
    ls: timestamp: No such file or directory

Hmm. What's going on here? Perhaps timestamp is a [phony target](http://www.gnu.org/software/make/manual/html_chapter/make_4.html#SEC41)? Maybe the debug output will be more enlightening:

    $ make -dr timestamp
    GNU Make 3.80
    [... irrelevant output snipped ...]
    Updating goal targets....
    Considering target file `timestamp'.
     File `timestamp' does not exist.
     Finished prerequisites of target file `timestamp'.
    Must remake target `timestamp'.
    Successfully remade target file `timestamp'.
    make: `timestamp' is up to date.

OK that didn't help. So I bet you're dying to look at the Makefile.

    DATE=/bin/date

    timestamp :
        ${DATE) > ${@}

You don't need to know anything special about makefiles to solve this one. Perhaps the only non-obvious part is that the `@` variable refers to "the current target", in this case the `timestamp` file.

Worked it out yet?



<a id="more"></a><a id="more-157"></a>


This problem is caused by ... (drumroll) ... **mismatched braces**.

The `${DATE)` string opens with a curly brace, and closes with a round parenthesis.

So you may find this easier to solve than I did. Maybe you have better eyesight than I do, or maybe your screen is a slightly lower resolution, or maybe your browser just renders the characters in a clearer way, perhaps without the use of sub-pixel rendering.

In fact, that's exactly how I found the solution to this problem. I first found it on my work Windows box, where I use Emacs with the Courier font. In that environment the two styles of brackets are quite similar. That night I looked at the problem again, this time on my Powerbook using Emacs and the Monaco font, where the mismatched braces were more apparent.

Lesson of the day is that using a "general purpose" font like Courier for programming tasks is probably inadvisable. You really want a font that accentuates the differences between syntactically different characters (e.g. the letter O and number 0 being a canonical example). Many specialised [programming fonts](http://keithdevens.com/wiki/ProgrammerFonts) are available. While some of these fonts make the text portions of your source code slightly less readable (as does the selection of a monospaced font in the first place), it may be a worthwhile trade-off to make, if the result is to make the source code as a whole more readable. This is generally true for syntaxes (syntaxen?) that tend towards [line noise](http://catb.org/~esr/jargon/html/L/line-noise.html), such as regular expressions.

For similar reasons &mdash; namely trading off a slight decrease in text readability for an increase in overall code readability &mdash; syntax colouring needs to be on. There are a whole class of subtle syntax problems which are easily detectable, with the help of your editor's syntax colouring. Emacs has a nice feature where it highlights mismatched braces in most (all?) programming modes, although only when the cursor is placed on one of the braces in question. Had emacs chosen to highlight the mismatched braces always, the problem would not have occurred.

I have some further thoughts on this topic, but I'll defer them to a subsequent post. For now, just let this be a lesson to you all!
