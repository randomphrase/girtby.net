---
layout: post
status: publish
published: true
title: Outlook Delivers Tommorow's Meetings Today
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  For a long time now I have encountered a really frustrating problem with Outlook calendars. This is an attempt to explain what the problem is, and why it happens. There is no fix or workaround, but maybe you have some ideas?

  Lets say you work in Melbourne and you have a colleage based in Atlanta. You collaborate closely on a project so you want to schedule a regular meeting to discuss it. You both use Microsoft Outlook to manage your calendars.



wordpress_id: 166
wordpress_url: http://girtby.net/2008/08/23/outlook-delivers-tommorows-meetings-today
date: 2006-01-11 22:01:30.000000000 -06:00
categories:
- Nerd Factor X
tags: []
comments:
- id: 1334
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-01-11 22:01:30 -0600'
  date_gmt: '2006-01-11 22:01:30 -0600'
  content: |-
    <p>I emailed Matt Stehle about this problem. Matt is a support engineer for Microsoft, focusing on Messaging APIs. He also runs the excellent <a href="http://blogs.msdn.com/mstehle/" rel="nofollow">CDOs and CDONTS of Messaging Development</a> blog. He replied with the following:</p>

    <blockquote>Happy to help.  I don't have any information off hand but I did show it
    to one of our Outlook development experts.  He thinks this might be
    address in Office 12 but we'll check to see if this was bugged for
    Office 2003.  I'll let you know if we find anything.

    Thanks for reading!</blockquote>

    <p>Thanks in advance Matt!</p>
---
For a long time now I have encountered a really frustrating problem with Outlook calendars. This is an attempt to explain what the problem is, and why it happens. There is no fix or workaround, but maybe you have some ideas?

Lets say you work in Melbourne and you have a colleage based in Atlanta. You collaborate closely on a project so you want to schedule a regular meeting to discuss it. You both use Microsoft Outlook to manage your calendars.



<a id="more"></a><a id="more-166"></a>


Your colleage creates a meeting for Monday 4pm <abbr title="Eastern Standard Time (US)">EST</abbr>. This is Tuesday 8am <abbr title="Australian Eastern Daylight Time">AEDT</abbr>.

<img src="/images/appointment-startend.png" width="418" height="231" alt="Screenshot showing the start and end time of the meeting in the US time zone." class="centered"/>

Your colleage hits the recurrence button, and chooses to have the meeting recur every week on Monday.

<img src="/images/appointment-recur.png" width="468" height="351" alt="Screenshot showing the recurrence dialog box with weekly recurrence selected" class="centered"/>

You get the meeting invite and hit Accept. It goes into your calendar this Tuesday at 8am, and all subsequent Tuesdays at the same time. No problems.

Now here's where the fun starts. You synchronise your calendar using Outlook's OLE interface to some other device, such as your PalmOS PDA. This is an example only - as we'll see the problem seems to be a limitation of the OLE interface and so exists for other devices and other Outlook synchronisation software.

Upon synchronising your PDA, you find out that the first appointment is present at the correct time (Tuesday 8am), but all subsequent instances occur on *Monday* at 8am. As a result you're on time for your first meeting but a day early for all subsequent meetings!

In order to see exactly what's going on, lets use a little bit of scripting to interrogate the [Outlook Object Model](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vbaol11/html/oltocommap_HV01049998.asp). The following is a JavaScript that uses the Outlook OLE interface. You can follow along at home using the windows scripting host; just save the following to a file, then run it using `cscript`.

    var ol = new ActiveXObject("outlook.application");
    // olFolderCalendar = 9
    var calendar = ol.getnamespace("mapi").getdefaultfolder(9).items;
    var stdout = WScript.StdOut;
    var i = 1;
    var total = calendar.Count;

    for (i=1; i<=total; i++) {

        var item = calendar(i);

        if (!item.isrecurring)
            continue;

        var pattern = item.getrecurrencepattern;
        var patternType = pattern.recurrencetype;

        // olRecursWeekly = 1
        if (patternType != 1)
            continue;

        stdout.WriteLine("Weekly recurring event: " + item.subject);
        stdout.WriteLine("   start: " + new Date(item.start));
        stdout.WriteLine("   end:   " + new Date(item.end));

        var mask = pattern.dayofweekmask;
        var daysOfWeek = "";

        if (mask & 1)  { daysOfWeek = "Sunday"; }
        if (mask & 2)  { daysOfWeek += " Monday"; }
        if (mask & 4)  { daysOfWeek += " Tuesday"; }
        if (mask & 8)  { daysOfWeek += " Wednesday"; }
        if (mask & 16) { daysOfWeek += " Thursday"; }
        if (mask & 32) { daysOfWeek += " Friday"; }
        if (mask & 64) { daysOfWeek += " Saturday"; }

        stdout.WriteLine("   recurs on: " + daysOfWeek);
    }

If all goes well you should see a dump of your weekly recurring events in Outlook. Here's what you should see when you run the above script to show the project meeting appointment that was initiated by your American colleage:

    Weekly recurring event: Project Meeting
       start: Tue Jan 17 08:00:00 UTC+1100 2005
       end:   Tue Jan 17 09:00:00 UTC+1100 2005
       recurs on:  Monday

So Outlook is translating the start and end time into the local (Melbourne) time zone, but it does *not* translate the days of recursion. The appointment should recur every Tuesday (in local time), as it does in the Outlook GUI, but instead it recurs on Mondays.

You could almost argue that this is not a bug, if it were possible to get the originating time zone of the appointment. This would allow you to do the day translation yourself. But as far as I can tell from looking at the object model, this is *not* possible. You can get the start and end time as a [Date object](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnvbadev/html/whatisdatehowdiditgetthere.asp), which as far as I can tell does not contain a time zone.

Unless I'm missing something in the Outlook object model, there's definitely a bug here: either the incorrect value is returned, or the information which allows the correct value to be calculated is missing.

So it seems that there is no way to fix or work around this problem using the Outlook OLE interface. Which is a requirement because it seems to be the most common interface used by synchronisation software.

Any ideas?
