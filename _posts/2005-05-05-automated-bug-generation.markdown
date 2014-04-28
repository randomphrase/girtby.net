---
layout: post
status: publish
published: true
title: Automated Bug Generation
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  AppleScript is the language for beginners. At least that's what Apple was telling us back in those heady System 7 days when it was introduced. But every time I attempt to use it, I struggle.



wordpress_id: 95
wordpress_url: http://girtby.net/2008/08/23/automated-bug-generation
date: 2005-05-05 00:14:35.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1131
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2005-05-05 00:14:35 -0500'
  date_gmt: '2005-05-05 00:14:35 -0500'
  content: "Ahh but why not raise the amusing topic of simple string handling. Have
    you seen the recommended way to replace a substring?\n\non searchReplace(theText,
    SearchString, ReplaceString)\n\tset OldDelims to AppleScript's text item delimiters\n\tset
    AppleScript's text item delimiters to SearchString\n\tset newText to text items
    of theText\n\tset AppleScript's text item delimiters to ReplaceString\n\tset newText
    to newText as text\n\tset AppleScript's text item delimiters to OldDelims\n\treturn
    newText\nend searchReplace\n\nNow, of course, I could get BBEdit to do that replace
    for me, but that does seem like overkill."
- id: 1132
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-05-05 00:14:35 -0500'
  date_gmt: '2005-05-05 00:14:35 -0500'
  content: |-
    Pretty crazy, for sure.

    BTW I did come across the following little trick which does simplify your subroutine a little:

        set {theOldDelimieter, text item delimiters} to {text item delimiters, SearchString}

    Like python, kinda.
---
AppleScript is the language for beginners. At least that's what Apple was telling us back in those heady System 7 days when it was introduced. But every time I attempt to use it, I struggle.



<a id="more"></a><a id="more-95"></a>


Let me show you what I mean. Open up the Script Editor and type the following:

	POSIX file "foo"

In AppleScript terms, this is creating a reference to an as-yet-nonexistent file, specified using a POSIX path. More specifically, it's a special kind of reference called a "fileURL" (not to be confused with a "file:/" URL). If you believe [Apple Tech Note 2022](http://developer2.apple.com/technotes/tn/tn2022.html), fileURLs are to be preferred over the old skool (HFS) file specification, originally used in System 7 and possibly earlier. If this doesn't mean anything to you, don't worry about it.

The point is this. Look what happens when you compile this script.

<img src="/images/as-compiled-1.png" height="185" width="283" alt="Compiled Applescript #1" class="centered" />

Amazing. This must be the only computer language in existence where the act of compiling actually *changes your source code*!

In this case the change is relatively benign. The code still runs and gives the same result. However it's pretty easy to find breakage. Let's try the following:

	class of POSIX file "foo"

Here I'm attempting to verify my hypothesis about the type of file reference created. Again the code is changed upon compilation, but it does produce the desired result when run:

<img src="/images/as-compiled-2.png" height="185" width="283" alt="Compiled Applescript #2" class="centered" />

Now here's the truly amazing thing. Let's try making a trivial change to the source &mdash; like adding a space and then removing it &mdash; then recompile and rerun:

<img src="/images/as-runtime-error.png" height="131" width="420" alt="AppleScript Runtime error" class="centered" />

This is just incredible. Not only does the compiler change your source code, it actually *breaks* it so that it *no longer runs*!

I must say this really is a time-saver. Thanks to AppleScript I no longer need to spend hours introducing bugs into my code; now the compiler can do it for me!
