---
layout: post
status: publish
published: true
title: xcopy brain damage
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  And now, a software development war story, if you'll indulge me.




wordpress_id: 174
wordpress_url: http://girtby.net/2007/03/12/xcopy-brain-damage
date: 2006-02-14 23:54:23.000000000 -06:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1344
  author: Alan Green
  author_email: ''
  author_url: http://cardboard.nu
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    <p>Your story illustrates why Windows programmers are paid more than Unix programmers: danger money.</p>

    <p>As an alternative to introducing GNU make, http://unxutils.sourceforge.net/ has a Windows version of the Unix "cp". "cp -u srcfile destfile" will do what you want.</p>
- id: 1345
  author: marxy
  author_email: peter.marks@pobox.com
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: <p>If you're going to install stuff then I'd install cygwin and rsync which
    will do what you want.</p>
- id: 1346
  author: alastair
  author_email: alastair@girtby.net
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: <p>As I recall, we did eventually introduce a dependency on Cygwin. It
    just seems like such a simple task that you'd think Windows would be able to do
    it out of the box. I guess not?</p>
- id: 1347
  author: Garth
  author_email: garthk@gmail.com
  author_url: http://www.deadlybloodyserious.com/
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    <p>Yuck: </p>

    <p>echo F | xcopy /d build\blah\foo.exe bin\foo.exe</p>
- id: 1348
  author: marcus
  author_email: mzafarano@loyaltylab.com
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    <p>I tried:</p>

    <p>system("echo xcopy \"$returnstr\" \"$mez<em>test</em>str\" /f /s /e /i");</p>

    <p>nothing happens, but it is asking me </p>

    <p>Does C:\build\6.2.3\noncompiled\Release6.2\InStorecard\Web\Assets\buysafe\shopper\ttlHd_crdts.gif specify a file name
    or directory name on the target
    (F = file, D = directory)?</p>

    <p>i tired:</p>

    <p>system("echo F|xcopy \"$returnstr\" \"$mez<em>test</em>str\" /f /s /e /i");</p>

    <p>and I get a parse error on the F|.</p>

    <p>Not sure what to do now. using XPerl</p>

    <p>Does anyone know what to do. This is under cygwin as well.</p>
- id: 1349
  author: Jim
  author_email: jimbendtsen@aim.com
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    <p>Try not using "\" at the end of the source path and adding one at the end of the destination. Something like this: </p>

    <p>C:\temp&gt;xcopy d:\h-drive\caching-cdn-proxy-streaming\ h:\caching-cdn-proxy-streaming\ /t /e</p>

    <p>or maybe like xcopy drive:\path*.exe \drive:\path\ /various parameters.</p>

    <p>also, if you copy xcopy.exe to mcopy.exe, it changes how it works. The difference I found is that mcopy requires that the destination path exist, where xcopy will create it if you answer the file or directory question interactively.</p>

    <p>Good Luck. Let me know if it works.</p>
- id: 1350
  author: me
  author_email: ''
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    I've used and I am still using XCOPY a lot of times, and I never had any issue with it, whatsoever. I only use it to refresh directory structures (/s), never without this option, never to copy 1 file. I've checked it multiple times, and it works perfectly, I am 100% sure that it works, using this method :

    xcopy C:\something\*.* D:\backup /s /d /y

    The issue as described in Attempt#3 is indeed annoying, but I guess that the /d option makes this go away, as this way he knows what he is copying, and doesn't come and asks this silly question.

    The issue as you described in Attempt2, I have never seen. I assume it appears when not using "*.*", or when not using "/s", but I am guessing. The timestamp comparision system works all right, I have seen it do time and time again, it is reliable as nothing else. I use it for incremental backups.

    Problem is, but that is not xcopy's fault, is that if you use it for incremental backup purposes (for which this /d option is designed anyway), is that removed files/directories on the source, still appear on the target. Depending on the circumstances, this may be a problem.

    Regards
- id: 1351
  author: FTR
  author_email: ''
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    Try

    xcopy \d build\blah\foo.exe bin\
- id: 1352
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    So here's the test case for those of you that want to have a try:

        C:\temp>mkdir bin

        C:\temp>mkdir build

        C:\temp>mkdir build\blah

        C:\temp>echo hello > build\blah\foo.txt

    Now your task is to find an xcopy command that will copy `build\blah\foo.txt` to `bin\foo.txt` but only when the former changes. In other words it should copy the first time, and subsequently not copy the file. Then, if you change `build\blah\foo.txt`it should copy the file the first time and not after that. Make sense?

    @me:

    The `\d` option is the whole point of the exercise. Without it I go back to copying everything all the time, and I can just use copy for that.

    @FTR:

        C:\temp>xcopy \d build\blah\foo.txt bin\
        Invalid number of parameters

    Thanks for playing.
- id: 1353
  author: Richard
  author_email: ''
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    Try using the slash the right way around. DOS options use leading /'s, not \'s or -'s.

        C:\temp>xcopy /d build\blah\foo.txt bin\
        build\blah\foo.txt
        1 File(s) copied
- id: 1354
  author: Goitom
  author_email: githouse@hotmail.com
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    I am refering to the problem mentioned at the begining of the thread for "Attempt #3: xcopy, again", this might be a solution to just copy only the file without being prompted to choose either file or directory

    xcopy /f /s /y build\blah\foo.exe bin\

    Thanks,
- id: 1355
  author: Matt Winchester
  author_email: matt@evolvit.co.uk
  author_url: http://www.evolvit.co.uk/
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    I am experiencing the same problem. The answer to your test case is to use the /m option instead of the /d option. That way it will copy the file the first time, then reset the archive flag for that file. it will then not copy that file again until you modify it, causing the archive flag to be set again.

    That is no good in my situation though as I am trying to back up to a removable tape drive, and I need the file to be copied to each tape, not just the first tape that is inserted after the file was modified.

    Does anyone know why the /d option doesn't do what it is supposed to?

    Matt
- id: 1356
  author: Zarko
  author_email: zb_z@yahoo.com
  author_url: ''
  date: '2006-02-14 23:54:23 -0600'
  date_gmt: '2006-02-14 23:54:23 -0600'
  content: |-
    Can this be the OS/version issue. I just tried on 2k3 (cmd/xcopy.exe ver: 5.02.3790.1830) with dest folder having the timestamp  lower but the file having higher then the source file and no problems at all:

    02/19/2007  18:29    <DIR>          bin
    02/19/2007  18:33    <DIR>          build

     Directory of C:\E\temp\bin
    02/19/2007  18:34                 8 foo.txt

     Directory of C:\E\temp\build\blah
    02/19/2007  18:30                 8 foo.txt

    xcopy /I/Y/R/d build\blah\foo.txt bin\
    0 File(s) copied

    Tried several times, making bigger time diff (just in case) and never ever got a hiccup.

    If we are still talking about building and on Windows, then you may want to take a look at the Rotor source distro (http://msdn.microsoft.com/net/sscli). Has the full build setup from DDK and a few extras (yes MS builds with Perl :-). Then look for publish.pl (pcopy" and makefile.plt (PUBLISH_CMD=). The mention of "pcopy" in publish.pl is the place to add extra tests.
---
And now, a software development war story, if you'll indulge me.




<a id="more"></a><a id="more-174"></a>


#### The Problem

Once upon a time I worked on a project where one of the deliverables was a Windows executable. We had a `build.bat` batch file with commands to copy executables and libraries from the build directories into a `bin` directory so they can be run.

The initial version of this used the vanilla Windows `copy` command. However this always copies every single file to the `bin` directory, resulting in a small, but noticable, turnaround time between building the executable and running it.

I thought: surely it would be easy to only copy the files if they had actually changed? Most of the files were third-party DLLs and they never change.

#### Attempt #1: `nmake`

I initially looked at using a makefile for this, more specifically the `nmake` tool that comes with Visual C++. After wrangling this tool for a bit, and eventually realising that it implements maybe 10% of the functionality of a real make tool (eg GNU make), I gave up. Not only was the makefile a monster (the equivalent in GNU make would be about 2 lines), but also it didn't quite do what I wanted. The existing build script ignores executables which haven't been built yet (e.g. test harnesses for modules you're not working on), and it was too hard to get `nmake` to do this.

Why not just use GNU make? Well as a general principle I try not to introduce additional dependencies on the build system unless absolutely necessary. I had one other alternative that was available for free...

#### Attempt #2: `xcopy`

So the next step was to modify `build.bat` to use `xcopy`. This tool has a `\d` option which (according to the help) "Copies files changed on or after the specified date. If no date is given, copies only those files whose source time is newer than the destination time." Sounds just the ticket right?

Unfortunately this option is so broken that I wonder if anyone has ever managed to put it to any worthwhile use, ever.

Note that it says it compares the source time with the destination time. Unfortunately if you specify the destination as a directory it will use the timestamp of the directory as the comparison, even if the source is a file. Duh.

#### Attempt #3: `xcopy`, again

OK, so we just specify the destination as a full filename, such as `xcopy \d build\blah\foo.exe bin\foo.exe`, right? Nope, Microsoft strikes again! `xcopy` gets confused and prompts you as to whether the destination is a directory or a file (!) As Dave Barry says, I am not making this up:

    Does c:\path\to\bin\foo.exe specify a file name or directory name
    on the target (F = file, D = directory)?

And of course there is no option to tell it which, beforehand.

After being struck with stupidity of such awesome magnitude, I simply gave up and went back to just blindly copying everything every time. And I can't recall ever having used `xcopy` since then.
