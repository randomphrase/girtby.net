---
layout: post
status: publish
published: true
title: And You Can Quote Me On That!
author: alastair
author_login: admin
author_email: alastair@girtby.net
author_url: http://girtby.net
excerpt: |+
  This article I wrote back in late 2001. At the time I was proto-blogging via email. I think it stands up pretty well, or at least meets the <del>high</del> usual standard of stuff I post around here. Enjoy.



wordpress_id: 220
wordpress_url: http://girtby.net/2007/02/21/and-you-can-quote-me-on-that
date: 2006-11-20 05:46:58.000000000 -06:00
categories:
- Nerd Factor X
- Provocation
tags: []
comments:
- id: 1495
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: I should point out also that since writing the above I have discovered
    the `-print0` argument to the `find` tool, and the corresponding `-0` delimiter
    in `xargs`. In general, this is a useful combination for handling filenames with
    spaces, but I suspect that in this particular case the above sed script is probably
    just as simple. Exercise for the reader?
- id: 1496
  author: Richard
  author_email: ''
  author_url: ''
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: |-
    Why for when you can find?

    <code>
        $ find . -name "*.bat" -exec bash -c "basename \"{}\" .bat | xargs -i@ mv @.bat @.bak" ";"
    </code>

    is only <i>slightly</i> unreadable ;) (Yes, that semicolon really does have to be there). I've no idea why you'd resort to -print0 and the like, since like everything else it can be solved with an extra layer of indirection, err, I mean quotes.

    Of course this find is only good enough if you're ok with it recursively 'backing up' innocent .bat files. You have been warned.
- id: 1497
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: "<b>Alastair:</b>\n\n> The problem as I see it is the “for” command itself.
    What it’s doing is expanding the *.bat bit into a space-delimited list of filenames
    (eg “foo.bat bar.bat I love Unix.bat”), then iterating over them one word at a
    time (“foo.bat”, “bar.bat”, “I”, “love”, “Unix.bat”).\n\nWrong. In fact, “`for`”
    is the *recommended* way of iterating over a glob. What happens is that *the shell*
    expands the `*.bat` glob into a list of filenames, each of which gets passed *as
    a unit* to ”`for`”, which then assigns it to `f`. Therefore “`for`” will *always*
    work, even where your `sed` script will fail (ie. when face of filenames with
    newlines in them).\n\nYour code still fails because you’re not quoting the variables
    when *using* them, causing the shell to expand the variable into a list of `IFS`-delimited
    strings. So while the shell passes “I love Unix.bat” as a single string to “`for`”,
    and that assigns it to `f` all right, the `$f` in your call to `mv` then expands
    to “I”, “love”, “Unix.bat”, which blows up. To avoid that, you use doublequotes:\n\n\tfor
    f in *.bat ; do mv \"$i\" \"${i%.bat}.bak\" ; done\n\nYour Linux Zealots weren’t
    very well versed in the ways of Unix. :)\n\nBtw: notice that I said the shell
    expands the glob into a list? That means that the `ls` your `ls *.bat` incantation
    is superfluous; by the time `ls` is invoked, the actual work has already happened.
    This is called a [useless use of `ls *`](http://partmaps.org/era/unix/award.html#ls).\n\n<b>Richard:</b>\n\n\tfind
    -name '*.bat' -print0 | sed 's!\\\\.bat\\x0!\\x0!g' | xargs -0i mv {}.bat {}.bak"
- id: 1498
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: Err, `s/when face of/when faced with/`.
- id: 1499
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: I also just noticed that all your examples say “`for f in`” (notice the
    `f`) but then use `$i`, not `$f`, in the body of the loop; and I copied that mistake.
- id: 1500
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: |-
    Aristotle, thanks for noticing the $f mistake, corrected.

    Also I understand what you are trying to say with the "for" statement and verified that the correctly quoted version works correctly. Thanks, and now all I have to internalise is the `${f%.bat}` syntax (I've read that section in the manpage n times and it still baffles me).

    One minor point: your wording implies that "for" is not part of the shell (ie "the shell passes to"). This is not the case, as "for" is an integral part of the shell, it's not even a builtin.
- id: 1501
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: |-
    > Btw: notice that I said the shell expands the glob into a list? That means that the ls your ls *.bat incantation is superfluous; by the time ls is invoked, the actual work has already happened.

    Err, care to explain this? How would you rewrite the following expression to remove the `ls`?

        ls *.bat | sed -e "s/[\\\"$]/\\&/g" -e "s/(.*).bat$/mv \"\1.bat\" \"\1.bak\"/" | sh

    (missing backslash corrected)
- id: 1502
  author: Aristotle Pagaltzis
  author_email: pagaltzis@gmx.de
  author_url: http://plasmasturm.org/
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: "> “for” is an integral part of the shell, it's not even a builtin.\n\nI
    know. What I was referring to is that glob expansion and “`for`” execution happen
    in different stages.\n\n> How would you rewrite the following expression to remove
    the ls?\n\nWith anything that prints its argument list. In the simplest cases,
    even `echo` might suffice. If you’re using bash, it’s very simple: it has is a
    builtin `printf`, so you can just say “`printf '%s\\n' *.bat`”.\n\nHeh. That suggests
    an alternative to my reply to Richard:\n\n\tprintf '%s\\0' *.bat | sed 's!\\.bat\\x0!\\x0!g'
    | xargs -0i mv {}.bat {}.bak"
- id: 1503
  author: marxy
  author_email: ''
  author_url: ''
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: |-
    I find that languages like python are everywhere I want to be and the code is so much more readable than shell.
    <pre><code>from os import walk, rename
    from os.path import join

    directory = "scans for rosie copy"
    extfrom = ".jpg"
    extto = ".gif"
    # extfrom = ".gif"
    # extto = ".jpg"

    for root, dirs, files in walk(directory):
        for fileName in files:
            if fileName.endswith(extfrom):
                newFileName = fileName.replace(extfrom, extto)
                rename(join(root, fileName), join(root, newFileName))
    </code></pre>

    I put it to you that the idle reader can figure out what's going on here which is more important than fewer lines of code.

    Sorry for the digression.
- id: 1504
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: |-
    marxy, in general you are right, it is more important to be clear than clever. However in the case of system admin tasks it really is useful to internalise a number of shell programming idioms which you will find yourself using over and over again. For me, the `find` command is like this, particularly in combination with `-print0` as discussed.

    In these cases, optimising for brevity gets you under the threshold of being able to memorise it in entirety. So the next time you come across the same problem, you simply are able to regurgitate the command and tailor for the situation. Agree that the python script is clearer, but does it follow you around to every system? If not, what then? Rewrite it? Go download it from another machine?

    There's also a middle ground between uber-shell scripting and using a real language like python. Frequently I simply load up the directory listing in emacs and use a macro function to mould it to my will. Once I've got a list of shell commands to run, just hit M-| to run them.

    Lastly, I can't help but recommend python list comprehensions, they're fantastic:

        from os import walk, rename
        from os.path import join
        extfrom = ".bat"
        extto = ".bak"
        for dirpath, dirnames, filenames in walk("."):
            map( lambda (old, new): rename(join(dirpath,old), join(dirpath,new)), \
                 [ (file, file.replace(extfrom,extto)) \
                   for file in filenames if file.endswith(extfrom) ] )

    Which, come to think of it, doesn't prove a point about either readability or brevity. :) But it is cool nonetheless...
- id: 1505
  author: Lloyd Budd
  author_email: foolswisdom@gmail.com
  author_url: http://foolswisdom.com
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: I tried to comment on http://girtby.net/articles/2006/08/12/on-switching-to-typo
    and received the message "Article points to an item that is no longer available
    for interaction"
- id: 1506
  author: Alastair
  author_email: ''
  author_url: http://girtby.net
  date: '2006-11-20 05:46:58 -0600'
  date_gmt: '2006-11-20 05:46:58 -0600'
  content: |-
    Lloyd: Sorry about that, fixed now.

    Typo has a "disable comments after n days" feature but for whatever reason it wasn't being reflected in the scribblish theme. I have re-enabled comments pending further investigation.
---
This article I wrote back in late 2001. At the time I was proto-blogging via email. I think it stands up pretty well, or at least meets the <del>high</del> usual standard of stuff I post around here. Enjoy.



<a id="more"></a><a id="more-220"></a>

 ***

Quoting filenames so that can be used on a command line is something that I have been dealing with on and off for 'kn years now. It is an endless source of frustration as you try to tell the computer where the filename stops and the next one begins. Allow me to illustrate with an example I posed recently on the [now defunct?] Link mailing list.

The discussion was about the relative merits of command-line versus graphical user interfaces. Yes that old hairy chestwig. Yes the discussion on Link is normally of higher caliber than this. But anyway, someone made the old point about how renaming a bunch of files from .bat to .bak was really difficult (or tedious and manual) in a GUI environment. Which is right I guess - though it does remind me of the sort of comment on a BBS that a DOS hardliner might have made about Windows circa 1988 ...

Anyway Link is the kind of place where lots of Linux hardliners hang out, and I felt like having a bit of fun, so I posed the question as to how this task would be achieved using common Unix tools. At the same time pointing out that Windows handles this task extremely well: `ren *.bat *.bak`. Lighting the fire underneath them so to speak :)

Now I don't profess to be a unix guru by any means, but the following monstrosity is the best I could come up with for achieving the task at hand. Brace yourself.

    ls *.bat | sed -e "s/[\\\"$]/\\\&/g" -e "s/\(.*\)\.bat$/mv \"\1.bat\" \"\1.bak\"/" | sh

Yes all those quotes are needed. Beautiful ain't she.

Actually if you look a bit closer it's not as bad as all that. The `ls *.bat` bit simply gets a list of the files to be renamed. Then we have a sed script (the first `-e` bit) which simply quotes any bad characters like slashes and quotes in those filenames. The next sed script takes the entire line minus the `.bat` it, wraps it up in an `mv` command, making sure to quote the arguments (so as to handle whitespace correctly). Finally we pipe through into a shell to do the actual work. You can change the work done by changing that last sed replacement, if you can find it amongst all that other crap.

I got lots of replies to my little script, all suggesting that a for loop would look a lot prettier. They're right:

	for f in *.bat ; { mv $f `basename $f .bat`.bak ; }

Or even, if you want to get tricky-ricky:

	for f in *.bat ; { mv $f $(f%.bat).bak ; }

Only trouble is, it doesn't work! Well OK it works for most files but as soon as you get a file with bad characters in it (actually spaces are the culprits here), it all falls in a heap.

The problem as I see it is the "for" command itself. What it's doing is expanding the *.bat bit into a space-delimited list of filenames (eg "foo.bat bar.bat I love Unix.bat"), then iterating over them one word at a time ("foo.bat", "bar.bat", "I", "love", "Unix.bat"). It's obvious why whitespace in filenames will completely break this technique. In contrast, my monstrosity starts with each file on a new line, hence as long as there are no end-of-lines in the filenames (Dog forbid), it should still work.

Needless to say, this was not a particularly well-received point amongst the Linux Zealots. Their argument was basically Dont-Do-That-Then. Specifically, don't put spaces and bad characters in your filenames. Very sound advice I would think, but not always practical. And it's not surprising that the zealots' attitude would be that spaces in filenames are fundamentally evil things, rather than an acknowledged limitation in the standard unix toolset (otherwise they wouldn't be zealots I suppose).

[Actually to be fair it was pointed out that the 'mmv' tool would have handled this task perfectly. I had never heard of it before, though it does look like a useful tool. I'll leave the definition of "standard unix toolset" (and whether or not it includes mmv) to your imagination.]

I'm sure the origin of all this is basically historical, but the fact remains there is a descrepancy between what the tools provide and what the filesystem supports. I'm no unix historian, but I'd bet 5 of your Earth dollars that the Bourne shell (for instance) can trace it's lineage back to the days when unix filesystems would not allow spaces in filenames. The filesystems were improved, but the tools had to remain static.

As unix/linux becomes less of a law-unto-itself, and more of a citizen that has to interact with other systems, the less of an option Don't-Do-That-Then becomes. I can think of no better example than the recent Apple iTunes installer debacle.

This was an update for the iTunes thingy (an MP3 player/ripper/encoder for Mac OS X) which Apple released recently. Of course they wanted to use the power of the underlying unix environment of Mac OS X to help the upgrade. So part of it was written using shell scripts. And of course there was a bug with the scripts which didn't handle spaces in filenames (actually volume names, but same principle applies), something from which Mac users have never shied away. They never needed to until now! Hence vast quantities of people's data was being DELETED all over the world. The whole sorry story is [documented in TidBITS](http://db.tidbits.com/article/06628).

 ***

As a postscript to this, let me point out that I seem to suffer slightly less with the problems of spaces in filenames these days. Maybe it's because I spend more of my time on Unix systems, and less on Cygwin. Or\ maybe\ I\'ve\ just\ gotten\ used\ to\ it\.
