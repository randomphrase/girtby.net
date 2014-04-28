---
layout: post
status: publish
published: true
title: Been Caught Stealin' (Focus)
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
wordpress_id: 66
wordpress_url: http://girtby.net/2008/09/23/been-caught-stealin-focus
date: 2005-02-01 16:24:37.000000000 -06:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1025
  author: Nicole Simon
  author_email: ''
  author_url: http://useful-sounds.de
  date: '2005-02-01 16:24:37 -0600'
  date_gmt: '2005-02-01 16:24:37 -0600'
  content: Yes. This is how it is supposed to be. We picking who gets attention and
    not the other way round! :)
- id: 1026
  author: Alan Green
  author_email: alan.green@cardboard.nu
  author_url: http://cardboard.nu
  date: '2005-02-01 16:24:37 -0600'
  date_gmt: '2005-02-01 16:24:37 -0600'
  content: I spend a few minutes every day staring into the middle distance, waiting
    for some MSWin application or other to start up, and not wanting to touch the
    keyboard or mouse because I'm not sure when the window will appear and grab the
    focus. I try not to think about it too much.
- id: 1027
  author: Alan Green
  author_email: alan.green@cardboard.nu
  author_url: http://cardboard.nu
  date: '2005-02-01 16:24:37 -0600'
  date_gmt: '2005-02-01 16:24:37 -0600'
  content: And my cat just reminded me... focus stealing application are neither as
    frustrating nor as disconcerting as a cat who has decided that it should suddenly
    stop being on the floor and start being on your keyboard.
- id: 1028
  author: Chris
  author_email: crgentle@gmail.com
  author_url: http://brainsnorkel.com
  date: '2005-02-01 16:24:37 -0600'
  date_gmt: '2005-02-01 16:24:37 -0600'
  content: |-
    If only Windows would instantiate one keyboard and mouse per window and restrict entry to those input devices.  Then it would all be a lot easier... right?

    I remember the Palm sync application being the bane of my life (before PocketMirror's calendar problems became the bane of my life forcing ActiveSync to become the bane of my life)...  It's probably not so bad now, but it used to steal focus from everything for minutes at a time rendering all other work impossible.  Of course when we first noticed its Application Attention Deficit Disorder it stole focus from wannabe usability engineers for cubicles around.
- id: 1029
  author: messenger
  author_email: messenger23@yahoo.com
  author_url: http://messengergr.webcindario.com
  date: '2005-02-01 16:24:37 -0600'
  date_gmt: '2005-02-01 16:24:37 -0600'
  content: It’s probably not so bad now, but it used to steal focus from everything
    for minutes at a time rendering all other work impossible
---
<a href="http://www.deadlybloodyserious.com/2005/02/01.html#P28">Garth vents on the subject of Windows applications stealing focus</a>. I agree, this is by far the most annoying thing about using a WinBox on any regular basis.

Up until a few months ago, when my company's IT&T group got it's Windows Domain migration shit together, I used to have to type my password into Outlook whenever I started it up. The sequence went: double-click Outlook, wait, watch the password dialog appear, <em>CLICK ON IT</em> because for some bloody reason it wasn't focused, and then start typing password. At this point, while I was typing my password, more often than not Outlook would <strong>steal focus from itself!</strong>. That is, the main Outlook window would get focus while it had a dialog box up. The password dialog was still in front of the main window, but it was deactivated and did not respond to typing. To remedy, I had to click <em>again</em> on the password box, and <em>retype the whole thing</em> because it's often easier to do that than count the little asterixes in the password box and hence how many of the password characters you've already typed and mentally unravel the characters from your password to find out how many more you have to type... AARGH!

<strong>Hulk SMASH Focus Stealing Application!</strong>

I'm glad I have a blog, otherwise I'd have to bottle all this frustration and then take it out on my unsuspecting family.

I don't know for sure but I think any attempt to fix this in the Windows API is going to be fraught with danger. Almost certainly you're going to have to deny applications that make certain system calls (maybe return a new error code?) to grab the focus. Changing the behaviour of the Windows API is not a decision to be taken lightly. I am already out of my depth so I'll just stop here and say that I am not hopeful it will be fixed in Longhorn or anything else. Let's just hope Microsoft don't repeat the same mistakes in .Net.

It goes without saying, but I have never had any application on MacOS X steal focus. Instead they bounce their icons in the dock, reminding me of a classroom with a kid who had done their homework: "I know! Pick me! Pick me!"

<strong>Update:</strong> Trust google to ruin a perfectly good rant. OK, so <a href="http://mycvs.org/archives/2004/11/16/applications-stealing-focus-on-windows-xp/">there's an answer</a>. And some good questions. Worth a look anyway.
