---
layout: post
status: publish
published: true
title: iCal, uCal, we all Cal
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: "<img src=\"/images/ical.jpg\"height=\"128\" width=\"120\" alt=\"iCal icon\"
  class=\"lede\" />I mentioned iCal [back in January](/archives/2005/01/12/gooey-or-webby-or-both/)
  as an example of a hybrid web/desktop application. Since then I have been using
  it some more and have come to really appreciate some of the finer points of its
  design. Here is an attempt to explain some of these and how powerful hybrid web/desktop
  applications in general can be.\r\n\r\n\r\n\r\n"
wordpress_id: 128
wordpress_url: http://girtby.net/2007/08/08/ical-ucal-we-all-cal
date: 2005-09-06 00:28:01.000000000 -05:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1225
  author: Sunny Kalsi
  author_email: kalsi@avaya.com
  author_url: http://quaddmg.blogspot.com
  date: '2005-09-06 00:28:01 -0500'
  date_gmt: '2005-09-06 00:28:01 -0500'
  content: |-
    If you've ever looked at Evolution, it's a lot like ical, except missing a few features and having a few others (it works with exchange). I use it at work. It also works well with the clock applet.
    Kawaii ^_^
    If only it didn't crash all the time.
- id: 1226
  author: Emmanuel
  author_email: ecrollen@gmx.net
  author_url: http://thetitaniumlink.blogspot.com
  date: '2005-09-06 00:28:01 -0500'
  date_gmt: '2005-09-06 00:28:01 -0500'
  content: |-
    <p>I have another problem with iCal. I would like it to synchronise, i.e. two-way (not either publishing or subscribing), with a webDAV server based calendar, that has a webinterface to add events through a browser. </p>

    <p>The idea is that I don't need several calendars and can update my private calendar from work.</p>

    <p>I have in the meantime found Sunbird from the Mozilla family. It does two way synchronisation. Yet, I can not install it at work and thus still need to find a webDAV server (such as iCal Exchange) with the possibility to make entries.</p>
- id: 1227
  author: Nickrus
  author_email: ''
  author_url: ''
  date: '2005-09-06 00:28:01 -0500'
  date_gmt: '2005-09-06 00:28:01 -0500'
  content: |-
    <p>To Emmanuel: hey, you're wrong! I've just installed my Sunbird copy to my home computer and I can say: it doesn't require administrative privileges to be installed!
    If you mean firewall difficulties, then don't worry: when you access webDAV module on a server that you work with, all the interconnection goes through the standart http (80) port which is typically open in the corporate firewall.</p>
---
<img src="/images/ical.jpg"height="128" width="120" alt="iCal icon" class="lede" />I mentioned iCal [back in January](/archives/2005/01/12/gooey-or-webby-or-both/) as an example of a hybrid web/desktop application. Since then I have been using it some more and have come to really appreciate some of the finer points of its design. Here is an attempt to explain some of these and how powerful hybrid web/desktop applications in general can be.



<a id="more"></a><a id="more-128"></a>


[iCal][] is of course the calendaring application for MacOS X. I have no idea why it is part of the operating system and not, say, part of the iLife suite. Anyway, there it is in the dock by default on all MacOS X installs. In case you were wondering, [July 17][1] &mdash; the date displayed in the icon when iCal is *not* running &mdash; is the [date iCal was released][2], and not Steve Jobs' birthday as I had initially assumed.

As a generic desktop calendar application, iCal is pretty, plays (syncs) well with others, and is hence perfectly adequate for most purposes. I understand from those who use it more heavily than I that it has [some limitations][3]. I'm sure that I could gripe about Microsoft Outlook &mdash; the calendar application <del>of choice</del> for work &mdash; just as much as others gripe about iCal. But that's a post for another day.

#### Sharing Calendars

The designers of iCal noted that each calendar is in fact an aggregation of events from many different sources. Sometimes I want to share individual events with other people, but sometimes I want to see an entire calendar of events from other sources. The result is a web of dependencies from my calendar to others and back again.

Sharing individual events in iCal is accomplished by the (more or less) well established practice of emailing events to each other. I haven't played with this very much, but iCal doesn't seem to be as clever as Outlook at managing this process. However, it's not iCal's only trick.

What makes iCal worthy of remark is the ability to **manage multiple calendars and aggregate them together seamlessly**.

Sharing entire calendars is where iCal really shines. For example, you can subscribe to calendars, each specified by a URL. The calendars are synchronised as often as you specify. Displayed in your day/week/month view is an aggregation of all the calendars you subscribe to, including your personal calendars. Each separate data source is colour-coded, and can be individually temporarily hidden from view. If you're reading this via an RSS aggregator, this should all sound pretty familiar.

Subscribing to calendars is a great complement to sharing of individual events, and works particularly nicely where relatively static recurring or ongoing events are shared with a large, changing, group. Like public holidays, sporting events, department meetings, concerts, astronomical events, and many others. [iCalShare][4] is a great source of publicly-available calendars.

Note that even individuals have different sources of calendars. iCal has a nice feature where the birthdays listed in your address book show up as a separate calendar. Also you might want to subscribe to your spouse's calendar. Or set up separate calendars for home and work purposes. iCal can even create a calendar for the birthdays listed in your Address Book. Nice.

As well as subscribing, iCal also supports publishing calendars. Again, all you enter is a URL and through the magic of WebDAV the calendar is uploaded whenever it is updated.

#### Living online

This gets back to my [original point](/archives/2005/01/12/gooey-or-webby-or-both/) about hybrid web/desktop applications. They are pretty and gooey, but all the crucial information lives On The Web somewhere. What I didn't say then, and will say now, is that the server this data lives on has to be a server of my (i.e. the user's) choosing.

Apple realised this when they provided a WebDAV client in iCal. Through their .Mac service they will also sell you access to a WebDAV server if you don't have one. Choice is good. (Pity they didn't provide the choice for the Address Book application! What's going on here, Apple?)

A mailbox on a Microsoft Exchange server does not qualify as On The Web. Even an Exchange server with a web interface. What good is that when I'm outside the corporate firewall?

[Indicidentally, I ridiculed Microsoft's Martin Taylor [before][nihs], but in that [same news.com.com.com.buggerit interview][5] he proposes solving this problem using a new class of "firewall bypass" technologies which, apart from [worrying Bruce Schneier][6] for the security implications, just sound wrong to me. I just don't want *all* my most relevant current information on an Exchange server behind the corporate firewall, even if I can access it conveniently.]

I want to decide where my data is stored because, hey, it's *my data*. But more importantly a centrally-managed data repository cannot hope to reflect the changing needs of the communal data which I also need to access. In my experience project teams are fairly transitory things, and they can sometimes cross organisational boundaries. Each team that I am a member of is one potential source of information for my application. Each will have (potentially, anyway) a calendar for me to subscribe to. It's just too much to ask for the gnomes that manage the servers to make all the right inter- and intra- organisational magic to ensure that all the relevant data is there for me where I need it.

At this point you might want to take a slightly tangential path and read jwz's [groupware rant][7]. It's short, and he uses the word fuck.

#### Enabling technologies

So hopefully I've made some case for the fact that the best applications are hybrid web/desktop applications. These:

* Have a friendly gooey desktop interface for creating stuff;
* Store all the important stuff on a server of my choosing;
* Allow me to access and (hopefully, anyway) edit that stuff through a browser interface, when I don't have the desktop interface handy; and
* (for additional credit) allow stuff from multiple sources to be aggregated together.

iCal does most of this, hence gets my vote as a great hybrid web/desktop application. The only thing missing is the the web interface: [PHP iCalendar][8]. Now I can view my calendar from anywhere on the web.

It's worth noting the value of open data formats, APIs and protocols in this picture. If iCal did not use a [standard data format][9] to store calendar data, then there almost certainly wouldn't be an open-source PHP implementation. This in turn wouldn't give me anywhere near as much flexibility over where I store my calendar, or choices in implementations for the web interface, thus defeating the purpose (or much of it anyway).

So all of this is how I would like my applications put together from now on. Application designers of the world, please keep this in mind, thanks.

[ical]: http://www.apple.com/macosx/features/ical/
[1]: http://en.wikipedia.org/wiki/July_17
[2]: http://outtacontext.com/life/archive/000301.shtml
[3]: http://homie.dijas.com/blog/2005/03/15/ical-gripes-and-groans.html
[4]: http://www.icalshare.com/
[nihs]: /archives/2005/07/27/not-invented-here-security/
[5]: http://news.com.com/Microsofts+eye+on+open+source+-+page+3/2008-1082_3-5796496-3.html?tag=st.next
[6]: http://www.schneier.com/blog/archives/2005/07/microsoft_build.html
[7]: http://www.jwz.org/doc/groupware.html
[8]: http://phpicalendar.net/
[9]: http://www.ietf.org/rfc/rfc2445.txt
