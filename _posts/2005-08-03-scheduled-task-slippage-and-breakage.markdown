---
layout: post
status: publish
published: true
title: Scheduled Task Slippage and Breakage
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  Despite a few famous delays, I think there is a good case to be made to say that Microsoft generally ships their software in a timely manner. The business of releasing software is surprisingly difficult and, having gone through it many times myself, I have some respect for Microsoft's ability to meet their release schedules.

  However, the old truism "on time, bug-free, full-featured, pick any two" still applies. Something's got to give. And this is, IMO, why a lot of Microsoft products feel kindof half-arsed. I've picked on [various][] [UI][] inconsistencies before, but there are also [security problems][], behavioral oddities, and other [quirks][] in Microsoft products which are easily traceable to the realities of shipping software.

  [various]: /archives/2005/05/19/more-powerpoint-ui-potshots/
  [ui]: /archives/2005/03/31/what-does-this-button-do/
  [security problems]: /archives/2005/07/26/the-war-on-security/
  [quirks]: /archives/2005/03/17/dont-use-wingdings/

  Corner-cutting like this is perfectly understandable and forgivable. But it is disappointing and frustrating when these corners *remain* cut, even in subsequent revisions of the software. Instead Microsoft forges ahead and introduces more and more half-arsery in the eternal quest for features, but in my subjective judgement rarely (if ever) fixes past breakages.



wordpress_id: 124
wordpress_url: http://girtby.net/2006/12/26/scheduled-task-slippage-and-breakage
date: 2005-08-03 21:37:21.000000000 -05:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1205
  author: Chris
  author_email: chris@brainsnorkel.com
  author_url: http://brainsnorkel.com
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    This is also one of my favourite moments in Windows user interface design.  It's the ultimate counter-example to disrupt user interface design discussions based on "Well Windows behaves like this, so we should" discussions.

    When you launch the "Add Scheduled Tasks" notepaddy thing, you find yourself in ye olde wizard interface.

    The niggle I have is that this wizard starts you at a page that's completely useless to ... everyone... and forces you to click "Next" to do anything.  Clicking "next" is surprising, because the anything you want to do is still an eternity away.  Clicking next makes your cursor goes busy and the wizard looks like it's hanging, (often) for minutes, while Windows dredges up all of the registered executables on your machine and presents them in a tiny window with a very long scrollbar.  It is only now that you have access to the "Browse..." button, which for me is almost what I want on page 1... along with command line parameters...  am I so different from regular people?

    Note also the icon used for the Scheduled Task Wizard in the taskbar.

    Half-assed doesn't begin to describe this dusty corner of Windows.
- id: 1206
  author: Peter
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: Of course having a "desktop cleanup wizard" has to be one of the most stupid
    user interface concepts. Surely this is a one step operation that is only made
    more complex by presenting it in a wizard.
- id: 1207
  author: mrd
  author_email: junk@enigma.se
  author_url: http://www.visualcron.com
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: A better alternative to scheduled tasks is VisualCron -&gt; <a HREF="http://www.visualcron.com"
    rel="nofollow">http://www.visualcron.com</A>
- id: 1208
  author: Kevin G.
  author_email: Kevin_Garlow@yahoo.com
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    Excellent (and very entertaining) article.

    To be clear, the actual behavior of "Notify Me of Missed Tasks" appears to be "Put up an annoying and misleading message in a pop-up."  The pop-up reads ""Some tasks did not execute at their scheduled times because the Task Scheduler service was not running."  What it really means is that it is *hypothetically possible* that some tasks might not have executed, because the Task Scheduler service was, however briefly, not running.  Note that Windows does not actual compare the scheduled task times against the service outage.  The pop-up is especially annoying and misleading during a restart of the workstation.

    The workaround to disable these annoying messages is to disable (uncheck) "Notify Me of Missed Tasks."  As documented above, this option doesn't do what it says, anyway!
- id: 1209
  author: William Stacey
  author_email: ''
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    Actually, it does what it says.  When scheduler starts, it enums the tasks and checks their NextRunTime to see if task is ready to run, if so, it runs it.  However, if the NextRunTime is too far in the past, it knows the task did not run so it throws the Missed message.  The logic is something like:
         if ( task.nextRunTime + TimeSpan.FromSeconds(MaxLagSeconds)
- id: 1210
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: William, I'm not sure if you were just replying to Kevin G's point, but
    my main problem with it is that there are many reasons why a scheduled task can
    fail to run, but only one of these reasons will cause the error notification.
    Either the wording needs to be fixed to more accurately represent the behaviour,
    or the task scheduler needs to be fixed to notify of all possible errors when
    scheduling tasks.
- id: 1211
  author: William Stacey
  author_email: ''
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    "Either the wording needs to be fixed to more accurately represent the behaviour, or the task scheduler needs to be fixed to notify of all possible errors when scheduling tasks."

    I totally agree.  IMO, you should get error notifications for everything.  But then should they be logged in Event log of with popup.  I don't like popups because they are to easy to click away and forget.   As for naming.  Not sure.  An error task is not a missed task, it actually started from the schedulers point of view, but had some kind of error along the way.  A missed task is one that the scheduler never even tried to kick off because it was too far in the past.  So I think the name is ok for that.  They need to add another check box called "Notify on Error" as well.
- id: 1212
  author: Oliver Reid
  author_email: oreid@firstgm.com
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    While we are all here can someone tell me how to set the TS so that tasks are visible if the user they are running under is logged in. I have 2 w2003 Server machines: on one the DOS window opens and I can watch the task run. On the other it is all invisible. AFAIK the settings are identical on both machines.

    Many, Many thanks
- id: 1213
  author: Confused
  author_email: none@nowhere.com
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: <p>Um... nice rant but no solution...</p>
- id: 1214
  author: Jestin Lightner
  author_email: whateverbiatch@hotmail.com
  author_url: http://www.securityfocus/myfavoritesite.com
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    <p>im looking for a 3rd party solution right now. ive notified microsoft that the steps they offer as a solution are nothing but verification of the default settings and that if compatibility problems exist (yeah right, IF) we should be informed. In my opinion i consider it to be lazy/sloppy programming
    which is why we have such security problems today; they dont give a damn.</p>
- id: 1215
  author: Darren Nagle
  author_email: d.nagle@hotmail.com
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    <p>Windows Task Scheduler is indeed a piece of work!  We use sqlSentry for Task Scheduler alerting -- it's the only product I've seen that makes Task Scheduler even remotely managable... don't be fooled by the name, sqlSentry fully supports both visual Outlook-style drag-and-drop scheduling for Task Scheduler, as well as SMTP-based email alerts for task failures, hung tasks, long runtimes, short runtimes, etc!  You can buy the product with only the Task Scheduler module, and it runs $195 per Task Scheduler.  It's a very cool product all the way around -- easy to use, and the company has excellent support too.</p>

    <p>More info on their alerting:
    http://www.sqlsentry.net/sql-mail-notification-alerting.asp </p>

    <p>They have a 30-day trial download:
    http://www.sqlsentry.net/optimizing-sql-server-software-download-request.asp </p>

    <p>The trial doesn't allow you to drag-and-drop to reschedule tasks -- I guess they don't want you to be able to clean up your schedules too much before you buy ;-)  Otherwise it's fully functional though.</p>

    <p>I hope this helps!</p>
- id: 1216
  author: Jason Hill
  author_email: ''
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    I have found the Desktop Cleanup Wizard to be one of the more annoying Windows XP defaults. It is one of the first things I disable on a new install. You can disable Desktop Cleanup Wizard by performing the following steps:

       1. Right click on the desktop and choose Properties (I'll leave out any other means of accessing this due to differences in Control Panel's Classic and Category views)
       2. Click on the Display tab
       3. Click the Customize Desktop button
       4. Uncheck Run Desktop Cleanup Wizard every 60 days

    While you're in there you might want to enable My Computer and friends on the desktop, thats the second thing I do on a new install :)
- id: 1217
  author: Bob Smiley
  author_email: bobsmiley@aol.com
  author_url: ''
  date: '2005-08-03 21:37:21 -0500'
  date_gmt: '2005-08-03 21:37:21 -0500'
  content: |-
    I've been dealing with the Task Scheduler problem (where IT forces you to change your system password, and it breaks your scheduled tasks), since I worked for a company back in 2000 that used WinNT.  Now, I'm working for a company in 2007 on WinXP, and still have the same problem.  I'd complain more, but your article pretty much sums up my frustration.  Like most folks, I don't want more features in newer versions of Windows...I just want the features currently there to either a) be made to work (of broke, dysfunctional or un-user-friendly), or b) made better (if not broke, but could be tweaked to add more functionality).

    Not to sound like a Linux dork or start a flame war, but I just recently (about the beginning of 2007) switched my personal comp at home over to GNU/Linux Ubuntu.  Over that time, I've been more and more annoyed with Windows as I find out it offers lots of functionality for little to no cost, while for the same functionality in Windows, you have to spend an arm and a leg buying tons of 3rd party programs to supplement Windows stripped-down or lackluster features.

    I've grown up with Windows, and use it at work, so I'm a bit sentimental about using it.  But it just seems like it could be so much better.  But, the push is to add more bells and whistles, because that seems to be their reasoning for selling the same product again and again.  I'm really tired of driving a car with an engine that
    still stalls sometimes, and an A/C that only partially works, but the mechanic thinks just adding new rims to the car will make me happy.  *sigh*
---
Despite a few famous delays, I think there is a good case to be made to say that Microsoft generally ships their software in a timely manner. The business of releasing software is surprisingly difficult and, having gone through it many times myself, I have some respect for Microsoft's ability to meet their release schedules.

However, the old truism "on time, bug-free, full-featured, pick any two" still applies. Something's got to give. And this is, IMO, why a lot of Microsoft products feel kindof half-arsed. I've picked on [various][] [UI][] inconsistencies before, but there are also [security problems][], behavioral oddities, and other [quirks][] in Microsoft products which are easily traceable to the realities of shipping software.

[various]: /archives/2005/05/19/more-powerpoint-ui-potshots/
[ui]: /archives/2005/03/31/what-does-this-button-do/
[security problems]: /archives/2005/07/26/the-war-on-security/
[quirks]: /archives/2005/03/17/dont-use-wingdings/

Corner-cutting like this is perfectly understandable and forgivable. But it is disappointing and frustrating when these corners *remain* cut, even in subsequent revisions of the software. Instead Microsoft forges ahead and introduces more and more half-arsery in the eternal quest for features, but in my subjective judgement rarely (if ever) fixes past breakages.



<a id="more"></a><a id="more-124"></a>


As an example, let me pick a Windows feature that is coincidentally related to timing and schedules. I must disclaim first that some of the details here are based on some admittedly hazy recollection of Windows operating system history. Please excuse any inaccuracy.

Windows NT 4.0 had a feature which would launch programs automatically at a scheduled time. It was called [scheduled tasks](http://www.microsoft.com/technet/prodtechnol/windows2000serv/evaluate/featfunc/taskschd.mspx) has survived since then in more-or-less the same form with only marginal improvements in Windows 2000. It is the same in Windows XP and Windows Server 2003. I believe it was also available in Windows 98 . Here is a screenshot of the XP interface:

<img src="/images/winxp-scheduled-tasks.png" alt="Screenshot of Windows XP Scheduled Tasks control panel" width="474" height="346" class="centered"/>

I have been using this feature since its release and have always found it fantastically difficult to configure. What the task would do if there was no desktop for user interaction? Where output would be sent? How do you invoke it ahead of schedule for testing purposes? How would errors be reported? It was up to the poor user to answer all of these questions, Windows provides little help.

[Incidentally, Microsoft's half-arsery is someone else's opportunity, which is why [FireDaemon](http://www.firedaemon.com/)  and various ports of cron have flourished.]

Of the above issues, the question of error notification is the one that bothers the most. If you are going to trust the operating system to run the task for you, you need a way to be notified if the task could not be run for any reason. Maybe the Windows engineers realised this, because they provided (in Windows 2000 at least) a feature called "Notify me of missed tasks". This is still accessible from the Advanced menu that appears in addition to the regular explorer menus when you open the Scheduled Tasks control panel (visible in the screenshot above).

There are at least two minor problems with the "notify me of missed tasks" feature: it requires administrator access to activate and actually recieve the notifications; also it is off by default. I was initially puzzled by these minor flaws until I realised the major, fatal, flaw in the "notify me of missed tasks" feature: It Does Not Mean What You Think It Means.

> **Notify Me of Missed Tasks.** Contrary to its name, the Notify Me of Missed Tasks option notifies you only of Task Scheduler's failure, not
> of individual missed tasks. Tasks that fail to run because of corrupt or missing executables don't kick off a notification.
>
> <cite>-- [Windows IT Pro magazine][] (subscription or [bugmenot][] required)</cite>

[Windows IT Pro magazine]: http://www.windowsitpro.com/Windows/Articles/ArticleID/16220/pg/2/2.html
[bugmenot]: http://bugmenot.com/view.php?url=http%3A%2F%2Fwindowsitpro.com

I verified this. Create a new scheduled task and it will fail quietly and without notification, even if you are an adminstrator, and have enabled the "Notify me of Missed Tasks" option.

[By the way, the above was the only documentation I could find of the complete breakage of this feature. Google reveals a multitude of Windows Tips sites who have obviously never used the feature they're tipping. I guess you get what you pay for on the Internets.]

If you see the "notify me of missed tasks" option you will probably assume that when enabled it will, you know, notify you of missed tasks. If so you've just made an ass out of u. In my opinion the worst possible flaw a user interface element can have is to state that it is going to do some action, then when activated actually do something else entirely. Frankly Windows could be improved by just removing this broken option.

This morning I discovered, the hard way, that my scheduled backup jobs had not been run for over a month.

Oh yes. A month.

"I wonder when the backups were last run" is a thought that rather fortuitously occurred to me this morning. I didn't actually need to restore anything from backup.

[As an aside, it turns out that the underlying cause of the backup job failure can be traced to more Windows corner-cutting. The part of Windows that enforces the corporate policy of changing passwords every 60 days does not talk to the part of Windows that stores the passwords for my scheduled jobs. I had forgotten to go into the scheduled tasks and update the passwords, and so my backup job was attempting to use my old Windows password. There is no good reason why I should have to remember this obscure task; that's what computers are for, surely?]

Regardless of the reason for the scheduled task failure, Windows has no way to tell me about it. And, given that the [life clock](http://www.engadget.com/entry/3476140848325705/) of my scheduled tasks starts to blink after 60 days, the lack of notification turns out to be a deal-breaker. I count myself as lucky to only lose a months worth of backups, and nothing else.

So like I said, the Scheduled Task feature is possibly a victim of tight deadlines and limited resources, and I understand perfectly why Windows NT might have these types of flaws. And it's disappointing that a proper notification mechanism for missed scheduled tasks wasn't added to Windows 2000 or XP or Server 2003. But what is just infuriating is the fact that during this period of Windows development they added notification for *other things* that were nowhere near as important. Of course, I'm speaking of this:

<img src="/images/unused-icons.png" height="106" width="332" alt="'There are unused icons on your desktop' alert raised by Windows XP" class="centered" />

Pan, the Arcadian Lord of the Flocks and Pastures tells me that this alert is the [fifth most popular cause of suicide in the Western world, and is banned in Sweden and Estonia](http://www.foxglove.co.uk/pan/pan02.html). I can see why.

So at this point I'm reciting the mantra of Occam's Razor and trying very hard not to imagine a meeting of the Windows engineers where they sit around considering the relative importance of missed backup jobs versus a messy desktop and decide to nag their users about the latter and not the former.

Yes, I'm trying not to picture that meeting.

Trying *really* hard.
